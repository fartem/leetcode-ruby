# frozen_string_literal: true

# https://leetcode.com/problems/triangle/
# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
  return triangle.first.first if triangle.size == 1

  result = ::Array.new(triangle.size + 1, 0)
  (0..(triangle.size - 1)).reverse_each do |i|
    curr_size = triangle[i].size
    (0...curr_size).each do |j|
      result[j] = [result[j], result[j + 1]].min + triangle[i][j]
    end
  end

  result.first
end
