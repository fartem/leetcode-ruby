# frozen_string_literal: true

# https://leetcode.com/problems/check-if-number-has-equal-digit-count-and-digit-value/
# @param {String} num
# @return {Boolean}
def digit_count(num)
  count = ::Array.new(10, 0)
  (0...num.length).each { |i| count[num[i].to_i] += 1 }
  (0...num.length).each { |i| return false unless num[i].to_i == count[i] }

  true
end
