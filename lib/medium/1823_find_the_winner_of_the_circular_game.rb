# frozen_string_literal: true

# https://leetcode.com/problems/find-the-winner-of-the-circular-game/
# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def find_the_winner(n, k)
  return 1 if n == 1

  (find_the_winner(n - 1, k) + k - 1) % n + 1
end
