# frozen_string_literal: true

# https://leetcode.com/problems/check-if-number-is-a-sum-of-powers-of-three/
# @param {Integer} n
# @return {Boolean}
def check_powers_of_three(n) = !n.to_s(3).include?('2')
