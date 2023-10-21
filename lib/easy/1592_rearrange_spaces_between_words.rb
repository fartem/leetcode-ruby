# frozen_string_literal: true

# https://leetcode.com/problems/rearrange-spaces-between-words/
# @param {String} text
# @return {String}
def reorder_spaces(text)
  words = []
  spaces = 0
  word = []
  (0...text.length).each do |i|
    c = text[i]
    if c == ' '
      spaces += 1

      if word.length.positive?
        words << word.join
        word = []
      end
    else
      word << c
    end
  end

  words << word.join unless word.empty?

  return text if spaces.zero? || words.empty?

  return words.first + ' ' * spaces if words.length == 1

  space = ' ' * (spaces / (words.length - 1))
  result = []
  length = 0
  (0...words.length).each do |i|
    word = words[i]
    result << word
    length += word.length

    next if i == words.length - 1

    result << space
    length += space.length
  end

  while length < text.length
    result << ' '
    length += 1
  end

  result.join
end
