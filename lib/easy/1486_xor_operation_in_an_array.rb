# frozen_string_literal: true

# https://leetcode.com/problems/xor-operation-in-an-array/
# @param {Integer} n
# @param {Integer} start
# @return {Integer}
def xor_operation(n, start)
  result = 0
  i = 0
  until i == n
    result ^= start + 2 * i
    i += 1
  end

  result
end
