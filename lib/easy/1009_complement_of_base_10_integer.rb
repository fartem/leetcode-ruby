# frozen_string_literal: true

# https://leetcode.com/problems/complement-of-base-10-integer/
# @param {Integer} n
# @return {Integer}
def bitwise_complement(n)
  return 1 if n.zero?

  rev = 0
  pos = 0
  while n.positive?
    rev |= (n & 1) == 1 ? 0 : 1 << pos
    n >>= 1
    pos += 1
  end

  rev
end
