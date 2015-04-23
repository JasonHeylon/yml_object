# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yml_object/version'

Gem::Specification.new do |spec|
  spec.name          = "yml_object"
  spec.version       = YmlObject::VERSION
  spec.authors       = ["Jason Heylon"]
  spec.email         = ["jasonheylon@gmail.com"]
  spec.summary       = %q{Load YML file, use it like an object}
  spec.description   = %q{Load YML file, use it like an object}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.2.0'
end
