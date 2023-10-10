# frozen_string_literal: true

# https://leetcode.com/problems/shuffle-string/
# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)
  result = ::Array.new(indices.length)
  (0...indices.length).each do |i|
    result[indices[i]] = s[i]
  end

  result.join
end
