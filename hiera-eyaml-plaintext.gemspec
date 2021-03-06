# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hiera/backend/eyaml/encryptors/plaintext'

Gem::Specification.new do |gem|
  gem.name          = "hiera-eyaml-plaintext"
  gem.version       = Hiera::Backend::Eyaml::Encryptors::Plaintext::VERSION
  gem.description   = "Plaintext encryptor for use with hiera-eyaml"
  gem.summary       = "Encryption plugin for hiera-eyaml backend for Hiera"
  gem.author        = "Geoff Meakin"
  gem.license       = "MIT"

  gem.homepage      = "http://github.com/gtmtechltd/hiera-eyaml-plaintext"
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
