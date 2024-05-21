# frozen_string_literal: true

# https://leetcode.com/problems/number-of-common-factors/
# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def common_factors(a, b)
  (1..[a, b].max).count { |i| (a % i).zero? && (b % i).zero? }
end
