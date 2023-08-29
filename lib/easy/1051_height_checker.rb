# frozen_string_literal: true

# https://leetcode.com/problems/height-checker/
# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
  expected = heights.dup
  expected.sort!
  result = 0
  (0..heights.length).each do |i|
    result += 1 if heights[i] != expected[i]
  end

  result
end
