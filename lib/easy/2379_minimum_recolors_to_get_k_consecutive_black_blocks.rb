# frozen_string_literal: true

# https://leetcode.com/problems/minimum-recolors-to-get-k-consecutive-black-blocks/
# @param {String} blocks
# @param {Integer} k
# @return {Integer}
def minimum_recolors(blocks, k)
  n = blocks.length
  result = n
  curr = 0
  (0...n).each do |i|
    curr += 1 if blocks[i] == 'B'
    curr -= 1 if i >= k && blocks[i - k] == 'B'

    result = [result, k - curr].min
  end

  result
end
