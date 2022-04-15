"""
@generated
cargo-raze generated Bazel file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")  # buildifier: disable=load

def cbindgen_cc_examples_fetch_remote_crates():
    """This function defines a collection of repos and should be called in a WORKSPACE file"""
    maybe(
        http_archive,
        name = "cbindgen_cc_examples__ansi_term__0_12_1",
        url = "https://crates.io/api/v1/crates/ansi_term/0.12.1/download",
        type = "tar.gz",
        sha256 = "d52a9bb7ec0cf484c551830a7ce27bd20d67eac647e1befb56b0be4ee39a55d2",
        strip_prefix = "ansi_term-0.12.1",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.ansi_term-0.12.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__atty__0_2_14",
        url = "https://crates.io/api/v1/crates/atty/0.2.14/download",
        type = "tar.gz",
        sha256 = "d9b39be18770d11421cdb1b9947a45dd3f37e93092cbf377614828a319d5fee8",
        strip_prefix = "atty-0.2.14",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.atty-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__autocfg__1_1_0",
        url = "https://crates.io/api/v1/crates/autocfg/1.1.0/download",
        type = "tar.gz",
        sha256 = "d468802bab17cbc0cc575e9b053f41e72aa36bfa6b7f55e3529ffa43161b97fa",
        strip_prefix = "autocfg-1.1.0",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.autocfg-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__bitflags__1_3_2",
        url = "https://crates.io/api/v1/crates/bitflags/1.3.2/download",
        type = "tar.gz",
        sha256 = "bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a",
        strip_prefix = "bitflags-1.3.2",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.bitflags-1.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__cbindgen__0_15_0",
        url = "https://crates.io/api/v1/crates/cbindgen/0.15.0/download",
        type = "tar.gz",
        sha256 = "1df6a11bba1d7cab86c166cecf4cf8acd7d02b7b65924d81b33d27197f22ee35",
        strip_prefix = "cbindgen-0.15.0",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.cbindgen-0.15.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__cfg_if__1_0_0",
        url = "https://crates.io/api/v1/crates/cfg-if/1.0.0/download",
        type = "tar.gz",
        sha256 = "baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd",
        strip_prefix = "cfg-if-1.0.0",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.cfg-if-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__clap__2_34_0",
        url = "https://crates.io/api/v1/crates/clap/2.34.0/download",
        type = "tar.gz",
        sha256 = "a0610544180c38b88101fecf2dd634b174a62eef6946f84dfc6a7127512b381c",
        strip_prefix = "clap-2.34.0",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.clap-2.34.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__fastrand__1_7_0",
        url = "https://crates.io/api/v1/crates/fastrand/1.7.0/download",
        type = "tar.gz",
        sha256 = "c3fcf0cee53519c866c09b5de1f6c56ff9d647101f81c1964fa632e148896cdf",
        strip_prefix = "fastrand-1.7.0",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.fastrand-1.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__hashbrown__0_11_2",
        url = "https://crates.io/api/v1/crates/hashbrown/0.11.2/download",
        type = "tar.gz",
        sha256 = "ab5ef0d4909ef3724cc8cce6ccc8572c5c817592e9285f5464f8e86f8bd3726e",
        strip_prefix = "hashbrown-0.11.2",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.hashbrown-0.11.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__heck__0_3_3",
        url = "https://crates.io/api/v1/crates/heck/0.3.3/download",
        type = "tar.gz",
        sha256 = "6d621efb26863f0e9924c6ac577e8275e5e6b77455db64ffa6c65c904e9e132c",
        strip_prefix = "heck-0.3.3",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.heck-0.3.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__hermit_abi__0_1_19",
        url = "https://crates.io/api/v1/crates/hermit-abi/0.1.19/download",
        type = "tar.gz",
        sha256 = "62b467343b94ba476dcb2500d242dadbb39557df889310ac77c5d99100aaac33",
        strip_prefix = "hermit-abi-0.1.19",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.hermit-abi-0.1.19.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__indexmap__1_8_1",
        url = "https://crates.io/api/v1/crates/indexmap/1.8.1/download",
        type = "tar.gz",
        sha256 = "0f647032dfaa1f8b6dc29bd3edb7bbef4861b8b8007ebb118d6db284fd59f6ee",
        strip_prefix = "indexmap-1.8.1",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.indexmap-1.8.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__instant__0_1_12",
        url = "https://crates.io/api/v1/crates/instant/0.1.12/download",
        type = "tar.gz",
        sha256 = "7a5bbe824c507c5da5956355e86a746d82e0e1464f65d862cc5e71da70e94b2c",
        strip_prefix = "instant-0.1.12",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.instant-0.1.12.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__itoa__1_0_1",
        url = "https://crates.io/api/v1/crates/itoa/1.0.1/download",
        type = "tar.gz",
        sha256 = "1aab8fc367588b89dcee83ab0fd66b72b50b72fa1904d7095045ace2b0c81c35",
        strip_prefix = "itoa-1.0.1",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.itoa-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__libc__0_2_123",
        url = "https://crates.io/api/v1/crates/libc/0.2.123/download",
        type = "tar.gz",
        sha256 = "cb691a747a7ab48abc15c5b42066eaafde10dc427e3b6ee2a1cf43db04c763bd",
        strip_prefix = "libc-0.2.123",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.libc-0.2.123.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__log__0_4_16",
        url = "https://crates.io/api/v1/crates/log/0.4.16/download",
        type = "tar.gz",
        sha256 = "6389c490849ff5bc16be905ae24bc913a9c8892e19b2341dbc175e14c341c2b8",
        strip_prefix = "log-0.4.16",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.log-0.4.16.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__proc_macro2__1_0_37",
        url = "https://crates.io/api/v1/crates/proc-macro2/1.0.37/download",
        type = "tar.gz",
        sha256 = "ec757218438d5fda206afc041538b2f6d889286160d649a86a24d37e1235afd1",
        strip_prefix = "proc-macro2-1.0.37",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.proc-macro2-1.0.37.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__quote__1_0_18",
        url = "https://crates.io/api/v1/crates/quote/1.0.18/download",
        type = "tar.gz",
        sha256 = "a1feb54ed693b93a84e14094943b84b7c4eae204c512b7ccb95ab0c66d278ad1",
        strip_prefix = "quote-1.0.18",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.quote-1.0.18.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__redox_syscall__0_2_13",
        url = "https://crates.io/api/v1/crates/redox_syscall/0.2.13/download",
        type = "tar.gz",
        sha256 = "62f25bc4c7e55e0b0b7a1d43fb893f4fa1361d0abe38b9ce4f323c2adfe6ef42",
        strip_prefix = "redox_syscall-0.2.13",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.redox_syscall-0.2.13.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__remove_dir_all__0_5_3",
        url = "https://crates.io/api/v1/crates/remove_dir_all/0.5.3/download",
        type = "tar.gz",
        sha256 = "3acd125665422973a33ac9d3dd2df85edad0f4ae9b00dafb1a05e43a9f5ef8e7",
        strip_prefix = "remove_dir_all-0.5.3",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.remove_dir_all-0.5.3.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__ryu__1_0_9",
        url = "https://crates.io/api/v1/crates/ryu/1.0.9/download",
        type = "tar.gz",
        sha256 = "73b4b750c782965c211b42f022f59af1fbceabdd026623714f104152f1ec149f",
        strip_prefix = "ryu-1.0.9",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.ryu-1.0.9.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__serde__1_0_136",
        url = "https://crates.io/api/v1/crates/serde/1.0.136/download",
        type = "tar.gz",
        sha256 = "ce31e24b01e1e524df96f1c2fdd054405f8d7376249a5110886fb4b658484789",
        strip_prefix = "serde-1.0.136",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.serde-1.0.136.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__serde_derive__1_0_136",
        url = "https://crates.io/api/v1/crates/serde_derive/1.0.136/download",
        type = "tar.gz",
        sha256 = "08597e7152fcd306f41838ed3e37be9eaeed2b61c42e2117266a554fab4662f9",
        strip_prefix = "serde_derive-1.0.136",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.serde_derive-1.0.136.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__serde_json__1_0_79",
        url = "https://crates.io/api/v1/crates/serde_json/1.0.79/download",
        type = "tar.gz",
        sha256 = "8e8d9fa5c3b304765ce1fd9c4c8a3de2c8db365a5b91be52f186efc675681d95",
        strip_prefix = "serde_json-1.0.79",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.serde_json-1.0.79.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__strsim__0_8_0",
        url = "https://crates.io/api/v1/crates/strsim/0.8.0/download",
        type = "tar.gz",
        sha256 = "8ea5119cdb4c55b55d432abb513a0429384878c15dde60cc77b1c99de1a95a6a",
        strip_prefix = "strsim-0.8.0",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.strsim-0.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__syn__1_0_91",
        url = "https://crates.io/api/v1/crates/syn/1.0.91/download",
        type = "tar.gz",
        sha256 = "b683b2b825c8eef438b77c36a06dc262294da3d5a5813fac20da149241dcd44d",
        strip_prefix = "syn-1.0.91",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.syn-1.0.91.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__tempfile__3_3_0",
        url = "https://crates.io/api/v1/crates/tempfile/3.3.0/download",
        type = "tar.gz",
        sha256 = "5cdb1ef4eaeeaddc8fbd371e5017057064af0911902ef36b39801f67cc6d79e4",
        strip_prefix = "tempfile-3.3.0",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.tempfile-3.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__textwrap__0_11_0",
        url = "https://crates.io/api/v1/crates/textwrap/0.11.0/download",
        type = "tar.gz",
        sha256 = "d326610f408c7a4eb6f51c37c330e496b08506c9457c9d34287ecc38809fb060",
        strip_prefix = "textwrap-0.11.0",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.textwrap-0.11.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__toml__0_5_9",
        url = "https://crates.io/api/v1/crates/toml/0.5.9/download",
        type = "tar.gz",
        sha256 = "8d82e1a7758622a465f8cee077614c73484dac5b836c02ff6a40d5d1010324d7",
        strip_prefix = "toml-0.5.9",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.toml-0.5.9.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__unicode_segmentation__1_9_0",
        url = "https://crates.io/api/v1/crates/unicode-segmentation/1.9.0/download",
        type = "tar.gz",
        sha256 = "7e8820f5d777f6224dc4be3632222971ac30164d4a258d595640799554ebfd99",
        strip_prefix = "unicode-segmentation-1.9.0",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.unicode-segmentation-1.9.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__unicode_width__0_1_9",
        url = "https://crates.io/api/v1/crates/unicode-width/0.1.9/download",
        type = "tar.gz",
        sha256 = "3ed742d4ea2bd1176e236172c8429aaf54486e7ac098db29ffe6529e0ce50973",
        strip_prefix = "unicode-width-0.1.9",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.unicode-width-0.1.9.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__unicode_xid__0_2_2",
        url = "https://crates.io/api/v1/crates/unicode-xid/0.2.2/download",
        type = "tar.gz",
        sha256 = "8ccb82d61f80a663efe1f787a51b16b5a51e3314d6ac365b08639f52387b33f3",
        strip_prefix = "unicode-xid-0.2.2",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.unicode-xid-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__vec_map__0_8_2",
        url = "https://crates.io/api/v1/crates/vec_map/0.8.2/download",
        type = "tar.gz",
        sha256 = "f1bddf1187be692e79c5ffeab891132dfb0f236ed36a43c7ed39f1165ee20191",
        strip_prefix = "vec_map-0.8.2",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.vec_map-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__winapi__0_3_9",
        url = "https://crates.io/api/v1/crates/winapi/0.3.9/download",
        type = "tar.gz",
        sha256 = "5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419",
        strip_prefix = "winapi-0.3.9",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.winapi-0.3.9.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-i686-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.winapi-i686-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "cbindgen_cc_examples__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-x86_64-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//cbindgen/examples_cc/raze/remote:BUILD.winapi-x86_64-pc-windows-gnu-0.4.0.bazel"),
    )
