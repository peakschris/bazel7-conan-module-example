from conan import ConanFile
from conan.tools.google import BazelDeps, bazel_layout

class ConanRecipe(ConanFile):
    settings = "os", "compiler", "build_type", "arch"
    options = {"shared": [True, False]}
    default_options = {"shared": True, "*:shared": True}

    def requirements(self):
        requirements = self.conan_data.get('requirements', [])
        for requirement in requirements:
            self.requires(requirement)

    def layout(self):
        bazel_layout(self)

    def generate(self):
        bz = BazelDeps(self)
        bz.generate()

