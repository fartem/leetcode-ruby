# frozen_string_literal: true

# https://leetcode.com/problems/kth-largest-element-in-a-stream/
class KthLargest
  # @param {Integer} k
  # @param {Integer[]} nums
  def initialize(k, nums)
    @k = k
    @a = nums.sort.reverse.first(k)
  end

  # @param {Integer} val
  # @return {Integer}
  def add(val)
    if @a.size < @k || val > @a.last
      @a.insert(@a.bsearch_index { |v| val >= v } || -1, val)
      @a.pop if @a.size > @k
    end

    @a.last
  end
end
