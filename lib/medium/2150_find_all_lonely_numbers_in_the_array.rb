# frozen_string_literal: true

# https://leetcode.com/problems/find-all-lonely-numbers-in-the-array/
# @param {Integer[]} nums
# @return {Integer[]}
def find_lonely(nums)
  nums_with_count = ::Hash.new(0).tap { |h| nums.each { |num| h[num] += 1 } }
  result = []

  nums.each do |num|
    result << num if nums_with_count[num] == 1 && !nums_with_count.key?(num - 1) && !nums_with_count.key?(num + 1)
  end

  result
end
