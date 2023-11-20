# frozen_string_literal: true

# https://leetcode.com/problems/calculate-money-in-leetcode-bank/
# @param {Integer} n
# @return {Integer}
def total_money(n)
  weeks = n / 7
  result = 0
  (1..weeks).each { |i| result += 7 * (i + 3) }
  ((7 * weeks).to_i...n).each do |_|
    weeks += 1
    result += weeks
  end

  result
end
