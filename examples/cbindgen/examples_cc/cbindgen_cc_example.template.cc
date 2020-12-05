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

#include <cassert>
#include <cmath>
#include <cstdio>
#include <string>

void int_test()
{
    assert(__NAMESPACE__::int_from_rust() == 1337);
    __NAMESPACE__::int_into_rust(9999);
}

void string_test()
{
    // Get a string buffer from Rust
    char* buff = nullptr;
    size_t size = __NAMESPACE__::string_from_rust(&buff);
    assert(size > 0);

    // Build a std::string from the buffer and free it by passing
    // the buffer back to Rust. Failure to do this will result in
    // a memory leak
    assert(std::string(buff, size) == "Hello Fellow Rustacean!");
    __NAMESPACE__::free_rust_string(buff);

    // Test passing a string into Rust
    __NAMESPACE__::string_into_rust("Hello World!");
}

void struct_test()
{
    // Construct a struct that was defined in Rust code
    __NAMESPACE__::Point2D point = __NAMESPACE__::struct_from_rust();
    assert(fabs(point.x - 3.14f) < 0.01f);
    assert(fabs(point.y - 42.0f) < 0.01f);

    // The same struct in C++ and pass it back to Rust code
    __NAMESPACE__::Point2D point_cc = __NAMESPACE__::Point2D();
    point_cc.x = 42.0f;
    point_cc.y = 3.14f;
    __NAMESPACE__::struct_into_rust(point_cc);
}

int main(int argc, char** argv)
{
    int_test();
    string_test();
    struct_test();
}
