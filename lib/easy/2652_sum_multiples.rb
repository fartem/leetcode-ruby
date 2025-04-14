# frozen_string_literal: true

# https://leetcode.com/problems/sum-multiples/
# @param {Integer} n
# @return {Integer}
def sum_of_multiples(n)
  result = 0

  (1..n).each do |i|
    next if !(i % 3).zero? && !(i % 5).zero? && !(i % 7).zero?

    result += i
  end

  result
end
