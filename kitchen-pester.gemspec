# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'kitchen/verifier/pester_version'

Gem::Specification.new do |spec|
  spec.name          = "kitchen-pester"
  spec.version       = Kitchen::Verifier::PESTER_VERSION
  spec.authors       = ["Steven Murawski"]
  spec.email         = ["steven.murawski@gmail.com"]
  spec.summary       = 'Test-Kitchen verifier for Pester.'
  spec.description   = 'Skip all that Busser stuff and jump right into Pester.'
  spec.homepage      = "https://github.com/test-kitchen/kitchen-pester"
  spec.license       = "Apache 2"

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR).grep(/LICENSE|^lib/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"

  spec.add_dependency "test-kitchen", ">= 1.10", "< 3"
end
