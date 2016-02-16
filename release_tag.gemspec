# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'release_tag/version'

Gem::Specification.new do |spec|
  spec.name          = "release_tag"
  spec.version       = ReleaseTag::VERSION
  spec.authors       = ["Pradeep G"]
  spec.email         = ["itsprdp@gmail.com"]

  spec.summary       = %q{Computes the git release tag versions.}
  spec.description   = %q{Computes the git release tag versions based on the existing tags.}
  spec.homepage      = "http://github.com/itsprdp/release_tag"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
