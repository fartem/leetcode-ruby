# frozen_string_literal: true

# https://leetcode.com/problems/minimize-xor/
# @param {Integer} num1
# @param {Integer} num2
# @return {Integer}
def minimize_xor(num1, num2)
  a = num1.to_s(2).count('1')
  b = num2.to_s(2).count('1')

  result = num1

  (0...32).each do |i|
    if a > b && (1 << i) & num1 != 0
      result ^= 1 << i
      a -= 1
    end

    if a < b && ((1 << i) & num1).zero?
      result ^= 1 << i
      a += 1
    end
  end

  result
end
