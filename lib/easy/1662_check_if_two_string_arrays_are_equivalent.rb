# frozen_string_literal: true

# https://leetcode.com/problems/check-if-two-string-arrays-are-equivalent/
# @param {String[]} word1
# @param {String[]} word2
# @return {Boolean}
def array_strings_are_equal(word1, word2)
  word1.join == word2.join
end
