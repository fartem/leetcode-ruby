# frozen_string_literal: true

# https://leetcode.com/problems/make-two-arrays-equal-by-reversing-subarrays/
# @param {Integer[]} target
# @param {Integer[]} arr
# @return {Boolean}
def can_be_equal(target, arr)
  nums = ::Array.new(1001, 0)
  target.each { |num| nums[num] += 1 }

  arr.each do |num|
    return false if nums[num].zero?

    nums[num] -= 1
  end

  true
end
