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

use std::{
    ffi::{CStr, CString},
    os::raw::c_char,
    f32::consts::PI,
};

#[no_mangle]
pub extern "C" fn int_from_rust() -> i32 {
    1337
}

#[no_mangle]
pub extern "C" fn int_into_rust(num: i32) {
    assert_eq!(num, 9999);
}

/** # Safety
 * 
 * Dereferencing the pointer `buffer` is not safe
 */
#[no_mangle]
pub unsafe extern "C" fn string_from_rust(buffer: *mut *mut c_char) -> usize {
    let text = "Hello Fellow Rustacean!";
    let c_text: CString = CString::new(text).unwrap();
    *buffer = c_text.into_raw();

    text.len() as usize
}

/** # Safety
 * 
 * Dereferencing the pointer `buffer` is not safe
 */
#[no_mangle]
pub unsafe extern "C" fn free_rust_string(buffer: *mut c_char) {
    // The constructed CString will free the memory
    CString::from_raw(buffer);
}

/** # Safety
 * 
 * Dereferencing the pointer `text` is not safe
 */
#[no_mangle]
pub unsafe extern "C" fn string_into_rust(text: *const c_char) {
    let string = CStr::from_ptr(text);
    assert_eq!(string.to_str().unwrap(), "Hello World!");
}

#[repr(C)]
pub struct Point2D {
    pub x: f32, 
    pub y: f32,
}

#[no_mangle]
pub extern "C" fn struct_from_rust() -> Point2D {
    Point2D {
        x: PI,
        y: 42.0f32,
    }
}

#[no_mangle]
pub extern "C" fn struct_into_rust(point: Point2D) {
    let epsilon = 0.01f32;
    assert!((point.x - 42.0f32).abs() < epsilon);
    assert!((point.y - PI).abs() < epsilon);
}
