# frozen_string_literal: true

require_relative "lib/get_root/version"

Gem::Specification.new do |spec|
  spec.name          = "get_root"
  spec.version       = GetRoot::VERSION
  spec.authors       = ["Utkarsh Gupta"]
  spec.email         = ["utkarsh@debian.org"]
  spec.summary       = "Get the root directory of your git repository."
  spec.homepage      = "https://github.com/utkarsh2102/get_root"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir["lib/**/*", "LICENSE", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop-packaging", "~> 0.1.1"
end
