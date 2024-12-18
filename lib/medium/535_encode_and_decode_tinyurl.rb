# frozen_string_literal: true

# https://leetcode.com/problems/encode-and-decode-tinyurl/
# @param {String} long_url
# @return {String}
def encode(long_url)
  @urls = {}

  short_url = generate_short_url(long_url)
  short_url = generate_short_url(long_url) while @urls.include?(short_url)

  @urls[short_url] = long_url

  short_url
end

# @param {String} long_url
# @return {String}
def generate_short_url(_long_url)
  symbols = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'

  short_url = []
  (0...6).each { |_| short_url << symbols[rand(symbols.size)] }

  short_url.join
end

# @param {String} short_url
# @return {String}
def decode(short_url) = @urls[short_url]
