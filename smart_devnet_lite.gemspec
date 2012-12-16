# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name = "smart_devnet_lite"
  gem.version = "0.0.5"
  gem.authors = ["Katherine G. Pe"]
  gem.email = ["info@bridgeutopiaweb.com"]
  gem.description = %q{A lightweight gem for the SMART Devnet API that uses curl.}
  gem.summary = %q{Currently supports SMS API only}
  gem.homepage = "http://www.smart.com.ph/developer"

  gem.files = `git ls-files`.split($/)
  gem.executables = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'minitest'
end
