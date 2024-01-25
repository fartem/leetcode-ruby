# frozen_string_literal: true

# https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/
# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
  result = 0
  letters = ::Array.new(128, 0)
  chars.each_byte do |b|
    letters[b] += 1
  end

  (0...words.length).each do |i|
    word = words[i]
    brk = false
    letters_in_word = ::Array.new(128, 0)
    word.each_byte do |b|
      if letters[b].zero?
        brk = true
        break
      else
        count = letters_in_word[b] + 1
        if count <= letters[b]
          letters_in_word[b] = count
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
