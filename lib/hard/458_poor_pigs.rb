# frozen_string_literal: true

# https://leetcode.com/problems/poor-pigs/
# @param {Integer} buckets
# @param {Integer} minutes_to_die
# @param {Integer} minutes_to_test
# @return {Integer}
def poor_pigs(buckets, minutes_to_die, minutes_to_test)
  time = minutes_to_test / minutes_to_die + 1
  result = 0
  total = 1

  while total < buckets
    total *= time
    result += 1
  end

  result
end
