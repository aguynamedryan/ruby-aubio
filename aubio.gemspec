# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aubio/version'

Gem::Specification.new do |spec|
  spec.name          = 'aubio'
  spec.version       = Aubio::VERSION
  spec.authors       = ['Xavier Riley']
  spec.email         = ['xavriley@hotmail.com']

  spec.summary       = 'Ruby bindings for the aubio audio library'
  spec.description   = 'Aubio is a tool designed for the extraction of annotations from audio signals. Its features include segmenting a sound file before each of its attacks, performing pitch detection, tapping the beat and producing midi streams from live audio.'
  spec.homepage      = 'https://github.com/xavriley/ruby-aubio'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'ffi', '~> 1.9'

  spec.add_development_dependency 'bundler'
  spec.add_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'ffi_gen'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rubocop'
end
