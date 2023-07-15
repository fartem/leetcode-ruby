# frozen_string_literal: true

# https://leetcode.com/problems/longest-harmonious-subsequence/
# @param {Integer[]} nums
# @return {Integer}
def find_lhs(nums)
  count = ::Hash.new(0)
  nums.each { |num| count[num] += 1 }

  result = 0
  count.each_key do |num|
    result = [result, count[num] + count[num + 1]].max if count.include?(num + 1)
  end

  result
end
