# frozen_string_literal: true

# https://leetcode.com/problems/count-operations-to-obtain-zero/
# @param {Integer} num1
# @param {Integer} num2
# @return {Integer}
def count_operations(num1, num2)
  num = [num1, num2].min
  result = 0
  until num&.zero?
    if num1 >= num2
      num = num1 - num2
      num1 = num
    else
      num = num2 - num1
      num2 = num
    end

    result += 1
  end

  result
end
