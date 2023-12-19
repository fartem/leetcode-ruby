# frozen_string_literal: true

# https://leetcode.com/problems/sum-of-digits-in-base-k/
# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def sum_base(n, k)
  result = 0
  num = n.to_s(k)
  (0...num.length).each do |i|
    result += num[i].to_i
  end

  result
end
