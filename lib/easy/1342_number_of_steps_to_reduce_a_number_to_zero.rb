# frozen_string_literal: true

# https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/
# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
  result = 0
  while num.positive?
    num = num.even? ? num / 2 : num - 1
    result += 1
  end

  result
end
