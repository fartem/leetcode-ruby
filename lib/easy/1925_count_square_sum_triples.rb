# frozen_string_literal: true

# https://leetcode.com/problems/count-square-sum-triples/
# @param {Integer} n
# @return {Integer}
def count_triples(n)
  result = 0
  limit = n + 1
  (1..limit).each do |i|
    (1..limit).each do |j|
      k = i * i + j * j
      sqrt = ::Integer.sqrt(k)

      next unless sqrt * sqrt == k && sqrt < limit

      result += 1
    end
  end

  result
end
