# frozen_string_literal: true

# https://leetcode.com/problems/climbing-stairs/
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return 1 if n == 1

  n1 = 1
  n2 = 2
  (3..n).each do
    temp = n1
    n1 = n2
    n2 += temp
  end

  n2
end
