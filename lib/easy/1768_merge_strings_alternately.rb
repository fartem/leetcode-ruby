# frozen_string_literal: true

# https://leetcode.com/problems/merge-strings-alternately/
# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  result = ::Array.new(word1.length + word2.length, '')
  f = 0
  s = 0
  p = 0
  while p < result.length
    if word1.length > f
      result[p] = word1[f]
      f += 1
      p += 1
    end

    next unless word2.length > s

    result[p] = word2[s]
    s += 1
    p += 1
  end

  result.join
end
