# frozen_string_literal: true

# https://leetcode.com/problems/decompress-run-length-encoded-list/
# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
  length = 0
  (0...nums.length).step(2) do |i|
    length += nums[i]
  end

  result = ::Array.new(length)
  p = 0
  (0...nums.length).step(2) do |i|
    freq = nums[i]
    val = nums[i + 1]

    (0...freq).each do |_j|
      result[p] = val
      p += 1
    end
  end

  result
end
