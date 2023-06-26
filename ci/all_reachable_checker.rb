# frozen_string_literal: true

require 'net/http'

# Process reachable checker
def process
  readme = ::File.readlines('README.md')
  readme.each do |line|
    next unless line.include?('https://leetcode.com/problems/')

    uri = ::URI.extract(line)
    parsed_uri = uri.first[0, uri.first.length - 1]

    url = ::URI.parse(parsed_uri)
    req = ::Net::HTTP.new(url.host, url.port)
    req.use_ssl = true if url.scheme == 'https'
    res = req.request_head(url.path)

    if res.code != '200'
      puts("#{res.code} for #{parsed_uri}")
      exit(1)
    end

    sleep(5)
  end
end

process
