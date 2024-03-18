# frozen_string_literal: true

# https://leetcode.com/problems/counting-words-with-a-given-prefix/
# @param {String[]} words
# @param {String} pref
# @return {Integer}
def prefix_count(words, pref)
  words.count { |word| word.start_with?(pref) }
end
