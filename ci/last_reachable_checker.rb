# frozen_string_literal: true

require_relative './ci_job'

require 'net/http'

module CI
  # CI job that checks last link in README reachable status.
  class LastReachableChecker < CIJob
    # Process LastReachableChecker
    # @return {Void}
    def process
      check
    end

    private

    # @return {Void}
    def check
      readme = ::File.readlines('README.md')
      last_solution = readme.last

      regex = %r{https://[^\s()<>]+(?:\([\w\d]+\)|([^[:punct:]\s]|/))}

      url = ::URI.parse(last_solution.match(regex)[0])
      req = ::Net::HTTP.new(url.host, url.port)
      req.use_ssl = true if url.scheme == 'https'
      res = req.request_head(url.path)

      return if res.code == '200'

      end_with_error(-> { puts("LastReachableChecker ends with an error from #{parsed_uri} (#{res.code}).") })
    end
  end
end
