# Copyright 2015 The Bazel Authors. All rights reserved.
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

"""This module contains defines helper macros for the cbindgen examples"""

# buildifier: disable=unnamed-macro
def generate_src(target, lang, namespace=None):
    """Helper function for generating the cbindgen C/C++ example source code

    Args:
        target (str): The name of the rust library target of who's cbindgen header to include
        lang (str): The target language of the source file
        namespace (str, optional): An explicit namespace name for `lang=cc` targets. Defaults to None.

    Returns:
        str: Name of the generated target
    """
    name = "generated_" + target + "_" + lang + "_src"

    if not namespace:
        namespace = target

    native.genrule(
        name = name,
        outs = ["cbindgen_example_" + target + "." + lang],
        srcs = ["@examples//cbindgen/examples_cc:cbindgen_cc_example.template." + lang],
        cmd = """cat $(SRCS) \
        | sed 's^__CBINDGEN_EXAMPLE_HEADER__^{package}/{target}^g' \
        | sed 's^__NAMESPACE__^{namespace}^g' \
        > $@""".format(
            package = native.package_name(),
            target = target,
            namespace = namespace,
        ),
    )

    return ":{}".format(name)
