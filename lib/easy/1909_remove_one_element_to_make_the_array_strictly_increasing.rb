# frozen_string_literal: true

# https://leetcode.com/problems/remove-one-element-to-make-the-array-strictly-increasing/
# @param {Integer[]} nums
# @return {Boolean}
def can_be_increasing(nums)
  has_removing = false
  (0...(nums.length - 1)).each do |i|
    curr = nums[i]
    nxt = nums[i + 1]

    next if curr < nxt

    return false if has_removing

    if i.zero?
      nums[i] = nxt - 1
    else
      prev = nums[i - 1]

      if nxt > prev
        nums[i] = prev
      else
        nums[i + 1] = curr
      end
    end

    has_removing = true
  end

  true
end
