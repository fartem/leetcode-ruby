# frozen_string_literal: true

# https://leetcode.com/problems/count-nice-pairs-in-an-array/
# @param {Integer[]} nums
# @return {Integer}
def count_nice_pairs(nums)
  (0...nums.size).each { |i| nums[i] -= rev(nums[i]) }

  count = {}
  result = 0

  nums.each do |num|
    curr = count.fetch(num, 0)
    result += curr
    result %= 1_000_000_007

    count[num] = curr + 1
  end

  result
end

private

# @param {Integer} num
# @return {Integer}
def rev(num)
  reversed = 0

  until num.zero?
    digit = num % 10
    reversed = reversed * 10 + digit
    num /= 10
  end

  reversed
end
