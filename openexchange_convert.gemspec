# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'openexchange_convert/version'

Gem::Specification.new do |spec|
  spec.name          = "openexchange_convert"
  spec.version       = OpenexchangeConvert::VERSION
  spec.authors       = ["Sherod Taylor"]
  spec.email         = ["sherodtaylor@gmail.com"]
  spec.description   = %q{Using convert currency with realtime openexchange data}
  spec.summary       = %q{It uses the openexchange api to do realtime currency convert it supports all currencies on the openexchange api}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "simplecov-gem-adapter"
  spec.add_development_dependency "rspec"
  spec.add_dependency "json", "~> 1.7.7"
end
