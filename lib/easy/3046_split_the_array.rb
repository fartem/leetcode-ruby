# frozen_string_literal: true

# https://leetcode.com/problems/split-the-array/
# @param {Integer[]} nums
# @return {Boolean}
def is_possible_to_split(nums)
  count = {}

  nums.each do |num|
    count[num] = count.fetch(num, 0) + 1

    return false if count[num] == 3
  end

  true
end
