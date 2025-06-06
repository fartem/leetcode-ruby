# frozen_string_literal: true

require 'English'

::Gem::Specification.new do |s|
  s.required_ruby_version = '>= 3.0'
  s.name = 'leetcode-ruby'
  s.version = '9.3.9'
  s.license = 'MIT'
  s.files = ::Dir['lib/**/*.rb'] + %w[README.md]
  s.executable = 'leetcode-ruby'
  s.require_paths << 'lib'
  s.summary = 'Some solved problems from https://leetcode.com on Ruby'
  s.authors = ['Artem Fomchenkov']
  s.email = 'artem.fomchenkov@outlook.com'
  s.homepage = 'https://github.com/fartem/leetcode-ruby'
  s.extra_rdoc_files = ['README.md']

  s.add_development_dependency('minitest', '5.18.0')
  s.add_development_dependency('open-uri', '0.3.0')
  s.add_development_dependency('rake', '12.3.3')
  s.add_development_dependency('rubocop', '1.7.0')
  s.add_development_dependency('simplecov', '0.22.0')
  s.metadata['rubygems_mfa_required'] = 'true'
end
