# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'popcorntime_search/version'

Gem::Specification.new do |spec|
  spec.name          = 'popcorntime_search'
  spec.version       = PopcorntimeSearch::VERSION
  spec.authors       = ['David Marchante']
  spec.email         = ['davidmarchan@gmail.com']

  spec.summary       = %q{Search the popcorn-api https://github.com/popcorn-official/popcorn-api}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = 'https://github.com/iovis9/popcorntime_search'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'highline', '~> 1.7'
  spec.add_runtime_dependency 'httparty', '~> 0.13'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'guard-rspec', '~> 4.6'
  spec.add_development_dependency 'factory_girl', '~> 4.5'
  spec.add_development_dependency 'webmock', '~> 3.0'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'pry-byebug', '~> 3.3'
  spec.add_development_dependency 'awesome_print'
end
