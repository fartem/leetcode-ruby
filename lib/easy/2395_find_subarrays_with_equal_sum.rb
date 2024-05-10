# frozen_string_literal: true

# https://leetcode.com/problems/find-subarrays-with-equal-sum/
# @param {Integer[]} nums
# @return {Boolean}
def find_subarrays(nums)
  sums = ::Set.new
  prev = nums.first
  (1...nums.length).each do |i|
    num = nums[i]
    sum = num + prev

    return true if sums.include?(sum)

    sums << sum
    prev = num
  end

  false
end
