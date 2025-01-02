# frozen_string_literal: true

# https://leetcode.com/problems/count-common-words-with-one-occurrence/
# @param {String[]} words1
# @param {String[]} words2
# @return {Integer}
def count_words(words1, words2)
  w1 = words1.tally
  w2 = words2.tally

  w1.entries.sum { |entry| entry.last == 1 && w2[entry.first] == 1 ? 1 : 0 }
end
