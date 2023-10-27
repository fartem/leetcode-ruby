# frozen_string_literal: true

# https://leetcode.com/problems/mean-of-array-after-removing-some-elements/
# @param {Integer[]} arr
# @return {Float}
def trim_mean(arr)
  arr.sort!
  n = arr.length
  to_remove = n / 20
  new_size = n - to_remove * 2

  arr[to_remove, new_size].sum.to_f / new_size
end
