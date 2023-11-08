# frozen_string_literal: true

# https://leetcode.com/problems/richest-customer-wealth/
# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
  accounts.max_by(&:sum).sum
end
