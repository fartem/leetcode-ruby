# frozen_string_literal: true

# https://leetcode.com/problems/n-th-tribonacci-number/
# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  result = ::Array.new(38, 0)
  result[0] = 0
  result[1] = 1
  result[2] = 1
  (3..n).each do |i|
    result[i] = result[i - 3] + result[i - 2] + result[i - 1]
  end

  result[n]
end
