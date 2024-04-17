# frozen_string_literal: true

# https://leetcode.com/problems/calculate-amount-paid-in-taxes/
# @param {Integer[][]} brackets
# @param {Integer} income
# @return {Float}
def calculate_tax(brackets, income)
  result = 0.0
  prev = 0
  brackets.each do |bracket|
    upper = bracket.first
    percent = bracket.last

    return result + ((income - prev) * percent / 100.0) if income < upper

    result += (upper - prev) * percent / 100.0
    prev = upper
  end

  result
end
