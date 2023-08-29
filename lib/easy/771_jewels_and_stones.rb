# frozen_string_literal: true

# https://leetcode.com/problems/jewels-and-stones/
# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
  result = 0
  (0...stones.length).each do |i|
    result += 1 if jewels.include?(stones[i])
  end

  result
end
