# frozen_string_literal: true

# https://leetcode.com/problems/get-maximum-in-generated-array/
# @param {Integer} n
# @return {Integer}
def get_maximum_generated(n)
  return n if n < 2

  nums = ::Array.new(n + 1)
  nums[0] = 0
  nums[1] = 1
  result = 0
  (2...(n + 1)).each do |i|
    index = i / 2

    nums[i] =
      if i.even?
        nums[index]
      else
        nums[index] + nums[index + 1]
      end

    result = [result, nums[i]].max
  end

  result
end
