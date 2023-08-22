# frozen_string_literal: true

# https://leetcode.com/problems/binary-gap/
# @param {Integer} n
# @return {Integer}
def binary_gap(n)
  binary = n.to_s(2)
  distance = 0
  count = 0
  is_counting = false
  (0...binary.length).step(1) do |i|
    if binary[i] == '1'
      if is_counting
        count += 1
        distance = [distance, count].max
        count = 0
      else
        is_counting = true
      end
    elsif is_counting
      count += 1
    end
  end

  distance
end
