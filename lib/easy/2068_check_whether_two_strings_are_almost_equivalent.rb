# frozen_string_literal: true

# https://leetcode.com/problems/check-whether-two-strings-are-almost-equivalent/
# @param {String} word1
# @param {String} word2
# @return {Boolean}
def check_almost_equivalent(word1, word2)
  chars1 = ::Array.new(128, 0)
  chars2 = ::Array.new(128, 0)
  (0...word1.length).each do |i|
    chars1[word1[i].ord] += 1
    chars2[word2[i].ord] += 1
  end
  (0...chars1.length).each do |i|
    return false if (chars1[i] - chars2[i]).abs > 3
  end

  true
end
