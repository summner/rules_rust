# Rust rules
* [rust_cbindgen_library](#rust_cbindgen_library)

<a id="#rust_cbindgen_library"></a>

## rust_cbindgen_library

<pre>
rust_cbindgen_library(<a href="#rust_cbindgen_library-name">name</a>, <a href="#rust_cbindgen_library-cbindgen_flags">cbindgen_flags</a>, <a href="#rust_cbindgen_library-config">config</a>, <a href="#rust_cbindgen_library-header_name">header_name</a>, <a href="#rust_cbindgen_library-lang">lang</a>, <a href="#rust_cbindgen_library-lib">lib</a>, <a href="#rust_cbindgen_library-substitutions">substitutions</a>)
</pre>

Generate C/C++ bindings to Rust code from `rust_library` targets

`cbindgen` (see https://crates.io/crates/cbindgen) is a tool for generating C bindings to Rust code. This rule allows for `rust_library` targets that have also specified `cdylib` or `staticlib` as their `crate_type` to generate C/C++ bindings to be used in other rules that otherwise expect `cc_library` targets.

Note that in order to use these rules, the following snippet must be added to your projects `WORKSPACE.bazel` file:

```python
load("@rules_rust//cbindgen:repositories.bzl", "rust_cbindgen_repositories")

rust_cbindgen_repositories()
```

Basic Example:

Below demonstrates a `rust_cbindgen_library` target being used with a `cc_binary` target. More thorough examples can be seen in the `examples/cbindgen` directory of the `rules_rust` repository.

```python
rust_library(
    name = "lib",
    crate_type = "staticlib",
)

rust_cbindgen_library(
    name = "lib_cbindgen",
    lib = ":lib",
)

cc_binary(
    name = "bin",
    srcs = ["main.cc"],
    deps = [":lib_cbindgen"],
)
```


**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="rust_cbindgen_library-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/docs/build-ref.html#name">Name</a> | required |  |
| <a id="rust_cbindgen_library-cbindgen_flags"></a>cbindgen_flags |  Optional flags to pass directly to the bindgen executable. See https://docs.rs/cbindgen/latest/cbindgen/ for details.   | List of strings | optional | [] |
| <a id="rust_cbindgen_library-config"></a>config |  Optional Cbindgen configuration template   | <a href="https://bazel.build/docs/build-ref.html#labels">Label</a> | optional | None |
| <a id="rust_cbindgen_library-header_name"></a>header_name |  Optional override for the name of the generated header. The default is the name of the target created by this rule.   | String | optional | "" |
| <a id="rust_cbindgen_library-lang"></a>lang |  Optional target language identifier of the generated header file   | String | optional | "cc" |
| <a id="rust_cbindgen_library-lib"></a>lib |  The <code>rust_library</code> target from which to run cbindgen on. The <code>crate_type</code> of the target passed here must be either <code>cdylib</code> or <code>staticlib</code>.   | <a href="https://bazel.build/docs/build-ref.html#labels">Label</a> | required |  |
| <a id="rust_cbindgen_library-substitutions"></a>substitutions |  Optional substitutions for the cbindgen config template passed to <code>config</code>   | <a href="https://bazel.build/docs/skylark/lib/dict.html">Dictionary: String -> String</a> | optional | {} |


