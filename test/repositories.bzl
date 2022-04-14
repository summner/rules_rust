"""A module defining all dependencies for internal `rules_rust` tests"""

load("@rules_rust//test/cargo_manifest/raze:crates.bzl", "rules_rust_test_cargo_manifest_fetch_remote_crates")

# buildifier: disable=unnamed-macro
def test_repositories():
    """A helper macro for defining test dependencies"""
    rules_rust_test_cargo_manifest_fetch_remote_crates()
