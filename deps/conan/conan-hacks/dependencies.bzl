# This Bazel module should be loaded by your WORKSPACE file.
# Add these lines to your WORKSPACE one (assuming that you're using the "bazel_layout"):
# load("@//conan:dependencies.bzl", "load_conan_dependencies")
# load_conan_dependencies()

# This file was edited by hand after Conan generates it:
# 1) add load line
# 2) remove native. prefix from new_local_repository calls
# 3) update build_file references to use bazel labels
load("@bazel_tools//tools/build_defs/repo:local.bzl", "new_local_repository")

def load_conan_dependencies():
    new_local_repository(
        name="boost",
        path="C:/Users/browchri/.conan2/p/boost3ff2a4fdb6e27/p",
        build_file="//deps/conan/conan/boost:BUILD.bazel",
    )
    new_local_repository(
        name="bzip2",
        path="C:/Users/browchri/.conan2/p/bzip2c02b42bf08110/p",
        build_file="//deps/conan/conan/bzip2:BUILD.bazel",
    )
    new_local_repository(
        name="zlib",
        path="C:/Users/browchri/.conan2/p/zlib47a1fa7d4bdbe/p",
        build_file="//deps/conan/conan/zlib:BUILD.bazel",
    )
