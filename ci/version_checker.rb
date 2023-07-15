# frozen_string_literal: true

require_relative './ci_job'

require 'rubygems'
require 'open-uri'

module CI
  # CI job that checks project version.
  class VersionChecker < ::CI::CIJob
    # Process VersionChecker.
    def process
      check
    end

    private

    def check
      local_spec = ::Gem::Specification.load('leetcode-ruby.gemspec')

      res = ::URI.open('https://raw.githubusercontent.com/fartem/leetcode-ruby/master/leetcode-ruby.gemspec').read
      ::File.write('leetcode-ruby.gemspec.remote', res)
      remote_spec = ::Gem::Specification.load('leetcode-ruby.gemspec.remote')

      return if local_spec.version > remote_spec.version

      end_with_error(-> { puts('VersionChecker ends with an error.') })
    end
  end
end
