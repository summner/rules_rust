"""
@generated
cargo-raze generated Bazel file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")  # buildifier: disable=load

def rules_rust_test_cargo_manifest_fetch_remote_crates():
    """This function defines a collection of repos and should be called in a WORKSPACE file"""
    maybe(
        http_archive,
        name = "rules_rust_test_cargo_manifest__cargo_toml__0_8_1",
        url = "https://crates.io/api/v1/crates/cargo_toml/0.8.1/download",
        type = "tar.gz",
        sha256 = "513d17226888c7b8283ac02a1c1b0d8a9d4cbf6db65dfadb79f598f5d7966fe9",
        strip_prefix = "cargo_toml-0.8.1",
        build_file = Label("//test/cargo_manifest/raze/remote:BUILD.cargo_toml-0.8.1.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_test_cargo_manifest__proc_macro2__1_0_24",
        url = "https://crates.io/api/v1/crates/proc-macro2/1.0.24/download",
        type = "tar.gz",
        sha256 = "1e0704ee1a7e00d7bb417d0770ea303c1bccbabf0ef1667dae92b5967f5f8a71",
        strip_prefix = "proc-macro2-1.0.24",
        build_file = Label("//test/cargo_manifest/raze/remote:BUILD.proc-macro2-1.0.24.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_test_cargo_manifest__quote__1_0_7",
        url = "https://crates.io/api/v1/crates/quote/1.0.7/download",
        type = "tar.gz",
        sha256 = "aa563d17ecb180e500da1cfd2b028310ac758de548efdd203e18f283af693f37",
        strip_prefix = "quote-1.0.7",
        build_file = Label("//test/cargo_manifest/raze/remote:BUILD.quote-1.0.7.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_test_cargo_manifest__serde__1_0_117",
        url = "https://crates.io/api/v1/crates/serde/1.0.117/download",
        type = "tar.gz",
        sha256 = "b88fa983de7720629c9387e9f517353ed404164b1e482c970a90c1a4aaf7dc1a",
        strip_prefix = "serde-1.0.117",
        build_file = Label("//test/cargo_manifest/raze/remote:BUILD.serde-1.0.117.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_test_cargo_manifest__serde_derive__1_0_117",
        url = "https://crates.io/api/v1/crates/serde_derive/1.0.117/download",
        type = "tar.gz",
        sha256 = "cbd1ae72adb44aab48f325a02444a5fc079349a8d804c1fc922aed3f7454c74e",
        strip_prefix = "serde_derive-1.0.117",
        build_file = Label("//test/cargo_manifest/raze/remote:BUILD.serde_derive-1.0.117.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_test_cargo_manifest__syn__1_0_53",
        url = "https://crates.io/api/v1/crates/syn/1.0.53/download",
        type = "tar.gz",
        sha256 = "8833e20724c24de12bbaba5ad230ea61c3eafb05b881c7c9d3cfe8638b187e68",
        strip_prefix = "syn-1.0.53",
        build_file = Label("//test/cargo_manifest/raze/remote:BUILD.syn-1.0.53.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_test_cargo_manifest__toml__0_5_7",
        url = "https://crates.io/api/v1/crates/toml/0.5.7/download",
        type = "tar.gz",
        sha256 = "75cf45bb0bef80604d001caaec0d09da99611b3c0fd39d3080468875cdb65645",
        strip_prefix = "toml-0.5.7",
        build_file = Label("//test/cargo_manifest/raze/remote:BUILD.toml-0.5.7.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_test_cargo_manifest__unicode_xid__0_2_1",
        url = "https://crates.io/api/v1/crates/unicode-xid/0.2.1/download",
        type = "tar.gz",
        sha256 = "f7fe0bb3479651439c9112f72b6c505038574c9fbb575ed1bf3b797fa39dd564",
        strip_prefix = "unicode-xid-0.2.1",
        build_file = Label("//test/cargo_manifest/raze/remote:BUILD.unicode-xid-0.2.1.bazel"),
    )
