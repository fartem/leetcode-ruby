# frozen_string_literal: true

# https://leetcode.com/problems/unique-binary-search-trees/
# @param {Integer} n
# @return {Integer}
def num_trees(n)
  arr = ::Array.new(n + 2, 0)
  arr[0] = arr[1] = 1

  (2..n).each do |i|
    (0...i).each do |j|
      arr[i] += arr[j] * arr[i - j - 1]
    end
  end

  arr[n]
end
