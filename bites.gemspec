# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bites/version"

# Building a new version of the gem:
# gem build bites.gemspec

Gem::Specification.new do |spec|
  spec.name          = "bites"
  spec.version       = Bites::VERSION
  spec.authors       = ["David Newell"]
  spec.email         = ["d.newell1@outlook.com"]

  spec.summary       = %q{Edit text blocks quickly}
  spec.homepage      = "https://daibhin.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{(^(test|spec|features)/|.gem$)})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "generator_spec"
end
