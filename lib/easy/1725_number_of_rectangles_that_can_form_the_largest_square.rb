# frozen_string_literal: true

# https://leetcode.com/problems/number-of-rectangles-that-can-form-the-largest-square/
# @param {Integer[][]} rectangles
# @return {Integer}
def count_good_rectangles(rectangles)
  max = 0
  rectangles.each do |rectangle|
    min = [rectangle.first, rectangle.last].min
    rectangle[0] = min
    rectangle[1] = min

    max = min if min > max
  end

  result = 0
  rectangles.each do |rectangle|
    result += 1 if rectangle.first == max
  end

  result
end
