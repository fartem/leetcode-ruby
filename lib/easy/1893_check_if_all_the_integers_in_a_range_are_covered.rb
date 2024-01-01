# frozen_string_literal: true

# https://leetcode.com/problems/check-if-all-the-integers-in-a-range-are-covered/
# @param {Integer[][]} ranges
# @param {Integer} left
# @param {Integer} right
# @return {Boolean}
def is_covered(ranges, left, right)
  nums = ::Array.new(50, 0)
  ranges.each do |range|
    ((range.first - 1)...(range.last)).each do |i|
      nums[i] = 1
    end
  end

  ((left - 1)...right).each do |i|
    return false if nums[i].zero?
  end

  true
end
