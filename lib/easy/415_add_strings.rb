# frozen_string_literal: true

# https://leetcode.com/problems/add-strings/
# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
  result = ''
  num1_p = num1.length - 1
  num2_p = num2.length - 1
  addition = 0
  while num1_p >= 0 || num2_p >= 0
    first = next_num(num1, num1_p)
    second = next_num(num2, num2_p)
    sum = first + second
    if addition == 1
      sum += addition
      addition = 0
    end

    if sum >= 10
      sum -= 10
      addition = 1
    end

    result += sum.to_s
    num1_p -= 1
    num2_p -= 1
  end

  result += addition.to_s if addition == 1

  result.reverse
end

# @param {String} num
# @param {Integer} index
# @return {Integer}
def next_num(num, index)
  index >= 0 ? num[index].to_i(10) : 0
end
