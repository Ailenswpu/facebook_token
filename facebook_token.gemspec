# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'facebook_token/version'

Gem::Specification.new do |spec|
  spec.name          = "facebook_token"
  spec.version       = FacebookToken::VERSION
  spec.authors       = ["Ailenswpu"]
  spec.email         = ["renkaiswpu@gmail.com"]
  spec.summary       = %q{Simple, efficient background get facebook test token for Ruby}
  spec.description   = %q{Simple, efficient background get facebook test token for Ruby}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  
  spec.add_dependency 'mechanize'
end
