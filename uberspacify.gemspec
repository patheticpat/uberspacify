# -*- encoding: utf-8 -*-
require File.expand_path('../lib/uberspacify/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jan Schulz-Hofen"]
  gem.license       = 'MIT'
  gem.email         = ["jan@launchco.com"]
  gem.description   = %q{Deploy Rails apps on Uberspace}
  gem.summary       = %q{Uberspacify helps you deploy a Ruby on Rails app on Uberspace, a popular German shared hosting provider.}
  gem.homepage      = "https://rubygems.org/gems/uberspacify"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "uberspacify"
  gem.require_paths = ["lib"]
  gem.version       = Uberspacify::VERSION
  
  # dependencies for capistrano
  gem.add_dependency 'capistrano',        '>=2.12.0'
  gem.add_dependency 'capistrano_colors', '>=0.5.5'
  gem.add_dependency 'rvm-capistrano',    '>=1.2.5'
  
  # dependencies for puma on Uberspace
  gem.add_dependency 'puma'
  
  # dependency for mysql on Uberspace
  gem.add_dependency 'mysql2',            '>=0.3.11'
  
end
