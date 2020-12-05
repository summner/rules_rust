"""A module defining a helper rule for testing `cargo_manifest_aspect`"""

load("@io_bazel_rules_rust//cargo:cargo_manifest.bzl", "cargo_manifest_aspect")

def _gather_manifest_files(manifests):
    """Gather the File objects from a list of transitive cargo manifests

    Args:
        manifests (list): A list of depsets

    Returns:
        list: A list of `File` objects
    """
    files = []
    for set in manifests:
        for dep in set.to_list():
            files.append(dep)

    if len(files) == 0:
        fail("No manifests found for test")
    
    return files

def _cargo_manifest_test_impl(ctx):
    """The implementation for the `cargo_manifest_test` rul.e

    Args:
        ctx (ctx): The rule's context object

    Returns:
        list: A list containing the `DefaultInfo` providor
    """
    manifest_list = ctx.actions.declare_file("{}/artifacts".format(ctx.label.name))
    manifests = [dep[OutputGroupInfo].all_files for dep in ctx.attr.deps]
    ctx.actions.write(
        output = manifest_list,
        content = "\n".join([file.short_path for file in _gather_manifest_files(manifests)])
    )

    runner = ctx.actions.declare_file("runner", sibling = manifest_list)
    ctx.actions.run_shell(
        outputs = [runner],
        tools = [ctx.executable._runner],
        command = "cp {} {}".format(ctx.executable._runner.path, runner.path),
    )

    return [DefaultInfo(
        files = depset([manifest_list, runner]),
        runfiles = ctx.runfiles(
            files = ctx.files.deps + [manifest_list],
            transitive_files = depset(transitive = manifests),
        ),
        executable = runner,
    )]

cargo_manifest_test = rule(
    doc = "A helper rule for testing the `cargo_manifest_aspect` aspect",
    implementation = _cargo_manifest_test_impl,
    attrs = {
        "deps": attr.label_list(
            doc = "A list of targets. Expected to be either `rust_binary` or `rust_library`",
            aspects = [cargo_manifest_aspect],
        ),
        "_runner": attr.label(
            doc = "The executable for the test",
            default = "@io_bazel_rules_rust//test/cargo_manifest:runner",
            executable = True,
            cfg = "exec",
        ),
    },
    test = True,
)
