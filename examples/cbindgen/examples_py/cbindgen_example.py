#!/usr/bin/env python3

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

"""This module contains python tests for the cbindgen rule examples in 
rules_rust.
"""

import sys
from ctypes import (c_float, cdll, c_void_p, pointer, string_at, Structure)
from pathlib import Path
from unittest import (main, TestCase)

SHARED_LIB_PATH = None


class TestCBindgenExample(TestCase):
    """Exampels of a Rust library being used in python"""

    class Point2D(Structure):
        """A Python representation of a Rust struct

        Structs declared in C/C++ need to be redefined in python.
        """
        _fields_ = [("x", c_float),
                    ("y", c_float)]

    @classmethod
    def setUpClass(cls):
        """Unittest object setup method"""

        assert SHARED_LIB_PATH
        assert SHARED_LIB_PATH.exists()

        # Can raise an exception
        cls.rust_lib = cdll.LoadLibrary(str(SHARED_LIB_PATH.resolve()))
        assert cls.rust_lib

    def test_int(self):
        """Test cases for `int` data types"""

        self.assertEqual(TestCBindgenExample.rust_lib.int_from_rust(), 1337)
        TestCBindgenExample.rust_lib.int_into_rust(9999)

    def test_string(self):
        """Test cases for strings"""

        buff = c_void_p()
        size = TestCBindgenExample.rust_lib.string_from_rust(pointer(buff))
        self.assertTrue(size > 0)

        # Test the string
        self.assertEqual(string_at(buff, size), b"Hello Fellow Rustacean!")
        TestCBindgenExample.rust_lib.free_rust_string(buff)

        TestCBindgenExample.rust_lib.string_into_rust(b"Hello World!")

    def test_struct(self):
        """Test cases for Rust structs"""

        TestCBindgenExample.rust_lib.struct_from_rust.restype = \
            TestCBindgenExample.Point2D
        point = TestCBindgenExample.rust_lib.struct_from_rust()
        self.assertTrue((point.x - 3.14) < 0.01)
        self.assertTrue((point.y - 42.0) < 0.01)

        point_py = TestCBindgenExample.Point2D()
        point_py.x = 42.0
        point_py.y = 3.14
        TestCBindgenExample.rust_lib.struct_into_rust(point_py)


if __name__ == '__main__':

    # Locate shared lib argument
    SHARED_LIB_PATH = None
    for arg in sys.argv:
        if arg.endswith((".so", ".dylib", ".dll")):
            SHARED_LIB_PATH = Path(arg)
            break
    print("!!!!!!!!!!!", Path(SHARED_LIB_PATH).resolve())

    # Strip arguments
    sys.argv = [sys.argv[0]]

    # Run unittests
    main()
