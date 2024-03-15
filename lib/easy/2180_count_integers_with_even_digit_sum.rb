# frozen_string_literal: true

# https://leetcode.com/problems/count-integers-with-even-digit-sum/
# @param {Integer} num
# @return {Integer}
def count_even(num)
  result = 0
  (1..num).each do |i|
    curr = i
    sum = 0
    until curr.zero?
      part = curr % 10
      sum += part
      curr /= 10
    end

    result += 1 if sum.even?
  end

  result
end
