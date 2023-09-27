# frozen_string_literal: true

# https://leetcode.com/problems/check-if-all-1s-are-at-least-length-k-places-away/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def k_length_apart(nums, k)
  last = -1
  (0...nums.length).each do |i|
    next if nums[i] != 1

    if last == -1
      last = i

      next
    end

    return false if i - last < k + 1

    last = i
  end

  true
end
