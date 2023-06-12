# frozen_string_literal: true

# https://leetcode.com/problems/third-maximum-number/
# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
  sort = nums.sort
  length = sort.length
  last = sort[length - 1]

  return last if length < 3

  target = last
  counter = 2
  (0..length - 2).reverse_each do |i|
    num = sort[i]
    if target != num
      counter -= 1
      target = num
    end

    return target if counter.zero?
  end

  last
end
