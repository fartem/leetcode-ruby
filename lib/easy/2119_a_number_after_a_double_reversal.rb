# frozen_string_literal: true

# https://leetcode.com/problems/a-number-after-a-double-reversal/
# @param {Integer} num
# @return {Boolean}
def is_same_after_reversals(num)
  num.zero? || !(num % 10).zero?
end
