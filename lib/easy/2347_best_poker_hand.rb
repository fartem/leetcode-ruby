# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/best-poker-hand/
# @param {Integer[]} ranks
# @param {Character[]} suits
# @return {String}
def best_hand(ranks, suits)
  s = suits.to_set

  return 'Flush' if s.length == 1

  r = ::Array.new(14, 0)
  max = 0
  ranks.each do |rank|
    r[rank] += 1
    max = [max, r[rank]].max
  end

  return 'Three of a Kind' if max >= 3

  return 'Pair' if max == 2

  'High Card'
end
