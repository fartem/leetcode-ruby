# frozen_string_literal: true

# https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/
# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences)
  sentences.map { |sentence| sentence.count(' ') }.max + 1
end
