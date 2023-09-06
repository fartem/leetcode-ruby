# frozen_string_literal: true

# https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero/
# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
  return [0] if n == 1

  result = []
  middle = n / 2
  (0...n).each do |i|
    result << if i == middle
                n.odd? ? 0 : middle
              elsif i < middle
                -middle + i
              else
                i - middle
              end
  end

  result
end
