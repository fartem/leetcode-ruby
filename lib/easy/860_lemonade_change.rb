# frozen_string_literal: true

# https://leetcode.com/problems/lemonade-change/
# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  five = 0
  ten = 0
  bills.each do |bill|
    if bill == 5
      five += 1
    elsif bill == 10
      return false if five.zero?

      five -= 1
      ten += 1
    elsif five.positive? && ten.positive?
      five -= 1
      ten -= 1
    elsif five >= 3
      five -= 3
    else
      return false
    end
  end

  true
end
