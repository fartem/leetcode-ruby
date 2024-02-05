# frozen_string_literal: true

# https://leetcode.com/problems/jewels-and-stones/
# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
  stones.chars.sum { |c| jewels.include?(c) ? 1 : 0 }
end
