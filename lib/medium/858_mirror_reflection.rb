# frozen_string_literal: true

# https://leetcode.com/problems/mirror-reflection/
# @param {Integer} p
# @param {Integer} q
# @return {Integer}
def mirror_reflection(p, q)
  while p.even? && q.even?
    p >>= 1
    q >>= 1
  end

  1 - p % 2 + q % 2
end
