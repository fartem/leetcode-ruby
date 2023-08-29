# frozen_string_literal: true

# https://leetcode.com/problems/delete-columns-to-make-sorted/
# @param {String[]} strs
# @return {Integer}
def min_deletion_size(strs)
  result = 0
  (0...strs.first.length).each do |i|
    (1...strs.length).each do |j|
      next unless strs[j][i] < strs[j - 1][i]

      result += 1

      break
    end
  end

  result
end
