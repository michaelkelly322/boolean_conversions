# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boolean_conversions/version'

Gem::Specification.new do |spec|
  spec.name          = "boolean_conversions"
  spec.version       = BooleanConversions::VERSION
  spec.authors       = ["Michael Kelly"]
  spec.email         = ["michaelkelly322@gmail.com"]

  spec.summary       = "Adds basic boolean conversions for standard ruby objects"
  spec.description   = "Adds boolean conversions for String, Fixnum, TrueClass, FalseClass, and NilClass to convert common values like 'true', 0, and '0' to boolean values.  Integrates with rails as well."
  spec.homepage      = "https://github.com/michaelkelly322/boolean_conversions"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
