# frozen_string_literal: true

# https://leetcode.com/problems/minimum-amount-of-time-to-fill-cups/
# @param {Integer[]} amount
# @return {Integer}
def fill_cups(amount)
  [amount.max, (amount.sum + 1) / 2].max
end
