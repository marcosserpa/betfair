# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'betfair/version'

Gem::Specification.new do |spec|
  spec.name          = "betfair-ng"
  spec.version       = Betfair::VERSION
  spec.authors       = ["Marcos Serpa"]
  spec.email         = ["marcosserpa@gmail.com"]
  spec.summary       = %q{A lightweight wrapper for the Betfair Exchange API-NG}
  spec.homepage      = "http://github.com/marcosserpa/betfair"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 3.2.0"

  spec.add_development_dependency "bundler", ">= 2.4.0"
  spec.add_development_dependency "rake", ">= 13.2.0"

  spec.add_runtime_dependency 'activesupport', '>= 7.2.0'
  spec.add_runtime_dependency 'httpi', '>= 4.0.4'
end
