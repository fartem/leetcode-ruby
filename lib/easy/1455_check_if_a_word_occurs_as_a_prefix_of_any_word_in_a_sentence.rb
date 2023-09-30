# frozen_string_literal: true

# https://leetcode.com/problems/check-if-a-word-occurs-as-a-prefix-of-any-word-in-a-sentence/
# @param {String} sentence
# @param {String} search_word
# @return {Integer}
def is_prefix_of_word(sentence, search_word)
  word = []
  index = 0
  (0...sentence.length).each do |i|
    c = sentence[i]
    word << c

    next unless c == ' ' || i == sentence.length - 1

    index += 1

    return index if word.join.start_with?(search_word)

    word = []
  end

  -1
end
