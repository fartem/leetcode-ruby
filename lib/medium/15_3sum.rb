# frozen_string_literal: true

# https://leetcode.com/problems/3sum/
# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  result = []
  (0...nums.length - 2).each do |i|
    curr = nums[i]

    next if i.positive? && curr == nums[i - 1]

    rem = -curr
    start = i + 1
    en = nums.length - 1

    while start < en
      s = nums[start]
      e = nums[en]

      if s + e == rem
        result << [curr, s, e]

        start += 1 while start < en && nums[start] == nums[start + 1]
        en -= 1 while start < en && nums[en] == nums[en - 1]

        start += 1
        en -= 1
      elsif s + e > rem
        en -= 1
      else
        start += 1
      end
    end
  end

  result
end
