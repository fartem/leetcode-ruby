# frozen_string_literal: true

# https://leetcode.com/problems/last-stone-weight/
# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  stones.sort!.reverse!
  while stones.length > 1
    f_max = stones.shift
    s_max = stones.shift

    diff = f_max - s_max
    stones << diff if diff.positive?

    stones.sort!.reverse!
  end

  stones.last.nil? ? 0 : stones.last
end
