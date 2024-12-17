# frozen_string_literal: true

# https://leetcode.com/problems/replace-words/
# @param {String[]} dictionary
# @param {String} sentence
# @return {String}
def replace_words(dictionary, sentence)
  roots = ::Set.new(dictionary)
  words = sentence.split
  result = []
  words.each do |word|
    insert_word = word
    (1...word.size).each do |i|
      sub = word[0, i]

      next unless roots.include?(sub)

      insert_word = sub

      break
    end

    result << insert_word
  end

  result.join(' ')
end
