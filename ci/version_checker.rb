# frozen_string_literal: true

require 'rubygems'
require 'open-uri'

# Process version checker
def process
  local_spec = ::Gem::Specification.load('leetcode-ruby.gemspec')

  res = ::URI.open('https://raw.githubusercontent.com/fartem/leetcode-ruby/master/leetcode-ruby.gemspec').read
  ::File.write('leetcode-ruby.gemspec.remote', res)
  remote_spec = ::Gem::Specification.load('leetcode-ruby.gemspec.remote')

  exit(1) if local_spec.version <= remote_spec.version
end

process
