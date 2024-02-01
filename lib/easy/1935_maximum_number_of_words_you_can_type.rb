# frozen_string_literal: true

# https://leetcode.com/problems/maximum-number-of-words-you-can-type/
# @param {String} text
# @param {String} broken_letters
# @return {Integer}
def can_be_typed_words(text, broken_letters)
  words = text.split
  result = words.length
  chars = []
  broken_letters.each_byte { |b| chars[b] = 1 }
  words.each do |word|
    word.each_byte do |b|
      next unless chars[b] == 1

      result -= 1

      break
    end
  end

  result
end
