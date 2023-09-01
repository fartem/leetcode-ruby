# frozen_string_literal: true

# https://leetcode.com/problems/minimum-cost-to-move-chips-to-the-same-position/
# @param {Integer[]} position
# @return {Integer}
def min_cost_to_move_chips(position)
  even = 0
  odd = 0
  position.each do |pos|
    if pos.even?
      even += 1
    else
      odd += 1
    end
  end

  [even, odd].min
end
