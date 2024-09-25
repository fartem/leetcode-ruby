# frozen_string_literal: true

require 'prime'

# https://leetcode.com/problems/count-primes/
# @param {Integer} n
# @return {Integer}
def count_primes(n) = ::Prime.each(n - 1).count
