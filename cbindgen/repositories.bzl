# Copyright 2020 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Dependent repositories for cbindgen rules"""

load("@rules_rust//cbindgen/raze:crates.bzl", "rules_rust_cbindgen_fetch_remote_crates")

# buildifier: disable=unnamed-macro
def rust_cbindgen_repositories():
    """Declare dependencies needed for cbindgen."""

    rules_rust_cbindgen_fetch_remote_crates()

    native.register_toolchains("@rules_rust//cbindgen:default_cbindgen_toolchain")
