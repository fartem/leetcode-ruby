# frozen_string_literal: true

# https://leetcode.com/problems/count-prefixes-of-a-given-string/
# @param {String[]} words
# @param {String} s
# @return {Integer}
def count_prefixes(words, s)
  words.count { |word| s.start_with?(word) }
end
