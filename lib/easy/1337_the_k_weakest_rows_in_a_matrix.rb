# frozen_string_literal: true

# https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/
# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  values = ::Array.new(100)
  values.map! { |_x| _x = ::Array.new(100, 0) }
  (0...mat.length).each do |i|
    solders = 0
    (0...mat[i].length).each do |j|
      break if mat[i][j].zero?

      solders += 1
    end

    values[solders][i] = 1
  end

  result = ::Array.new(k)
  p = 0
  values.each do |value|
    (0...value.length).each do |i|
      if value[i] == 1 && p != k
        result[p] = i
        p += 1
      end
    end

    break if p == k
  end

  result
end
