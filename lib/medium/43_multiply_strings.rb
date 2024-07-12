# frozen_string_literal: true

# https://leetcode.com/problems/multiply-strings/
# @param {String} num1
# @param {String} num2
# @return {String}
def multiply(num1, num2)
  a = convert_to_int(num1)
  b = convert_to_int(num2)
  c = a * b

  c.to_s
end

private

# @param {String} num
# @return {Integer}
def convert_to_int(num)
  decimal_place = 1
  reverse_num = num.reverse
  int_value = 0

  num.size.times do |i|
    int_value += (reverse_num[i].ord - '0'.ord) * decimal_place
    decimal_place *= 10
  end

  int_value
end
