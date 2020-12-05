// Copyright 2020 The Bazel Authors. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// This is a template file used in the rules_rust cbindgen examples. It's
// primary purpose is to provide a common interface for all examples making 
// tests consistent accros various use cases. The most notable thing about 
// this file is the template variables. Please see 
// @io_bazel_rules_rust//examples/cbindgen/examples_cc:cbindgen_cc_example.bzl
// for more information.

#include "__CBINDGEN_EXAMPLE_HEADER__.h"

#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <math.h>


void int_test()
{
    assert(int_from_rust() == 1337);
    int_into_rust(9999);
}

void string_test()
{
    // Get a string buffer from Rust
    char* buff = NULL;
    size_t size = string_from_rust(&buff);
    assert(size > 0);

    // Test the results
    assert(strcmp(buff, "Hello Fellow Rustacean!") == 0);

    // Memory must be freed within rust for this string.
    free_rust_string(buff);

    // Test passing a string into Rust
    string_into_rust("Hello World!");
}

void struct_test()
{
    // Construct a struct that was defined in Rust code
    Point2D point = struct_from_rust();
    assert(fabs(point.x - 3.14f) < 0.01f);
    assert(fabs(point.y - 42.0f) < 0.01f);

    // The same struct in C++ and pass it back to Rust code
    struct Point2D point_c;
    point_c.x = 42.0f;
    point_c.y = 3.14f;
    struct_into_rust(point_c);
}

int main(int argc, char** argv)
{
    int_test();
    string_test();
    struct_test();
}
