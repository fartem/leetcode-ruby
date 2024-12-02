# frozen_string_literal: true

# https://leetcode.com/problems/ones-and-zeroes/
# @param {String[]} strs
# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def find_max_form(strs, m, n)
  result = ::Array.new(m + 1) { ::Array.new(n + 1, 0) }
  strs.each do |str|
    zeros = 0
    ones = 0
    str.each_char do |char|
      if char == '0'
        zeros += 1
      else
        ones += 1
      end
    end

    (zeros..m).reverse_each do |i|
      (ones..n).reverse_each do |j|
        result[i][j] = [result[i][j], result[i - zeros][j - ones] + 1].max
      end
    end
  end

  result[m][n]
end
