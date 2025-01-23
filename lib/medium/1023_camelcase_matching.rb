# frozen_string_literal: true

# https://leetcode.com/problems/camelcase-matching/
# @param [Array<String>] queries
# @param [String] pattern
# @return [Array<Boolean>]
def camel_match(queries, pattern)
  result = []
  p_length = pattern.size

  queries.each do |query|
    p = 0
    i = 0

    while i < query.size
      c = query[i]

      break if p >= p_length && c >= 'A' && c <= 'Z'

      if p < p_length && c == pattern[p]
        p += 1
      elsif c >= 'A' && c <= 'Z' && c != pattern[p]
        break
      end

      i += 1
    end

    result << (i == query.size && p == p_length)
  end

  result
end
