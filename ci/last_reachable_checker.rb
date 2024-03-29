# frozen_string_literal: true

require_relative './ci_job'

require 'net/http'

module CI
  # CI job that checks last link in README reachable status.
  class LastReachableChecker < CIJob
    # Process LastReachableChecker
    def process
      check
    end

    private

    def check
      readme = ::File.readlines('README.md')
      last_solution = readme.last

      uri = ::URI.extract(last_solution)
      parsed_uri = uri.first[0, uri.first.length - 1]

      url = ::URI.parse(parsed_uri)
      req = ::Net::HTTP.new(url.host, url.port)
      req.use_ssl = true if url.scheme == 'https'
      res = req.request_head(url.path)

      return if res.code == '200'

      end_with_error(-> { puts("LastReachableChecker ends with an error from #{parsed_uri} (#{res.code}).") })
    end
  end
end
