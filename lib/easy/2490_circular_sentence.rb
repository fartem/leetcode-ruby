# frozen_string_literal: true

# https://leetcode.com/problems/circular-sentence/
# @param {String} sentence
# @return {Boolean}
def is_circular_sentence(sentence)
  words = sentence.split
  first = words.first
  curr = first[first.length - 1]
  words.drop(1).each do |word|
    return false unless word[0] == curr

    curr = word[word.length - 1]
  end

  curr == first[0]
end
