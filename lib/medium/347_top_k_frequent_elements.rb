# frozen_string_literal: true

# https://leetcode.com/problems/top-k-frequent-elements/description/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  values = ::Hash.new(0)
  nums.each { |num| values[num] += 1 }
  queue = values.sort_by { |_, v| -v }.first(k)

  queue.map { |num, _| num }
end
