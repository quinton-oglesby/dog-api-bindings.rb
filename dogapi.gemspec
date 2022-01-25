# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'dog_api_bindings'
  s.version     = '0.0.0'
  s.summary     = 'Ruby bindings for the dog.ceo API.'
  s.description = 'My first ruby gem.'
  s.authors     = ['Quinton Oglesby']
  s.email       = 'qoglesby97@gmail.com'
  s.files       = ['lib/dog-api.rb']
  s.homepage    = 'https://rubygems.org/gems/dog_api_bindings'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 3.1.0'
  s.add_runtime_dependency 'http'
end
