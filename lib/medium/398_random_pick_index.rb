# frozen_string_literal: true

# https://leetcode.com/problems/random-pick-index/
class RandomPickIndex
  # @param {Integer[]} nums
  def initialize(nums)
    @nums = nums
    @indices = ::Hash.new { |hash, key| hash[key] = [] }
  end

  # @param {Integer} target
  # @return {Integer}
  def pick(target)
    if @indices.empty?
      @nums.each_with_index do |num, index|
        @indices[num] << index
      end
    end

    picks = @indices[target]

    picks[rand(picks.size)]
  end
end
