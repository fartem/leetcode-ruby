# frozen_string_literal: true

# https://leetcode.com/problems/nim-game/description/
# @param {Integer} n
# @return {Boolean}
def can_win_nim(n)
  n % 4 != 0
end
