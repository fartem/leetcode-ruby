# frozen_string_literal: true

# https://leetcode.com/problems/minimum-cuts-to-divide-a-circle/
# @param {Integer} n
# @return {Integer}
def number_of_cuts(n)
  if n > 1
    n.even? ? n / 2 : n
  else
    0
  end
end
