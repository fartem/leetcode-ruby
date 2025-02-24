# frozen_string_literal: true

# https://leetcode.com/problems/minimum-suffix-flips/
# @param {String} target
# @return {Integer}
def min_flips(target)
  flip = '0'
  result = 0

  (0...target.size).each do |i|
    next if target[i] == flip

    flip = target[i]
    result += 1
  end

  result
end
