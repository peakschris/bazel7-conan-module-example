load("//deps/conan/conan:dependencies.bzl", "load_conan_dependencies")

def _main_impl(_ctx):
    load_conan_dependencies()

conan_extension = module_extension(
    implementation = _main_impl,
)
