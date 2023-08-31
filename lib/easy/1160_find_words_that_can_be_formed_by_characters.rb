# frozen_string_literal: true

# https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/
# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
  result = 0
  letters = ::Array.new(128, 0)
  (0...chars.length).each do |i|
    letters[chars[i].ord] += 1
  end

  (0...words.length).each do |i|
    word = words[i]
    brk = false
    letters_in_word = ::Array.new(128, 0)
    (0...word.length).each do |j|
      index = word[j].ord
      if letters[index].zero?
        brk = true
        break
      else
        count = letters_in_word[index] + 1
        if count <= letters[index]
          letters_in_word[index] = count
        else
          brk = true
          break
        end
      end
    end

    result += word.length unless brk
  end

  result
end
