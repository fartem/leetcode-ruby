# frozen_string_literal: true

# https://leetcode.com/problems/string-to-integer-atoi/
# @param {String} s
# @return {Integer}
def my_atoi(s)
  [[-2_147_483_648, s.to_i].max, 2_147_483_647].min
end
