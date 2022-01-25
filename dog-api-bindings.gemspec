# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'dog_api_bindings'
  s.version     = '0.1.3'
  s.files       = ['lib/dog-api-bindings.rb']
  s.summary     = 'Ruby API wrapper for the dog.ceo API.'
  s.description = 'An easy to use api wrapper for the dog.ceo API.'
  s.authors     = ['Quinton Oglesby']
  s.email       = 'qoglesby97@gmail.com'
  s.homepage    = 'https://rubygems.org/gems/dog_api_bindings'
  s.metadata    = { "source_code_uri" => "https://github.com/quinton-oglesby/dog-api-bindings.rb" }
  s.license     = 'MIT'

  s.required_ruby_version = '>= 3.1.0'
  s.add_runtime_dependency 'http', '~> 5.0.4'
end
