# frozen_string_literal: true

# https://leetcode.com/problems/single-number/
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  count = {}
  nums.each do |num|
    val = count[num]
    count[num] = val.nil? ? 1 : val + 1
  end

  # noinspection RubyNilAnalysis
  count.find { |_key, value| value == 1 }.first
end
