# frozen_string_literal: true

require 'net/http'

# Process reachable checker
def process
  readme = ::File.readlines('README.md')
  last_solution = readme[readme.length - 1]

  uri = ::URI.extract(last_solution)
  parsed_uri = uri.first[0, uri.first.length - 1]

  url = ::URI.parse(parsed_uri)
  req = ::Net::HTTP.new(url.host, url.port)
  req.use_ssl = true if url.scheme == 'https'
  res = req.request_head(url.path)

  exit(1) if res.code != '200'
end

process
