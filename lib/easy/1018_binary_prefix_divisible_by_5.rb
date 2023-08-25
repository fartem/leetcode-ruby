# frozen_string_literal: true

# https://leetcode.com/problems/binary-prefix-divisible-by-5/
# @param {Integer[]} nums
# @return {Boolean[]}
def prefixes_div_by5(nums)
  result = []
  n = 0
  nums.each do |num|
    n = (n * 2 + num) % 10
    result << (n == 5 || n.zero?)
  end

  result
end
