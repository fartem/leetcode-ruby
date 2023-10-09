# frozen_string_literal: true

# https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_odds(low, high)
  additional = low.even? && high.even? ? 0 : 1

  (high - low) / 2 + additional
end
