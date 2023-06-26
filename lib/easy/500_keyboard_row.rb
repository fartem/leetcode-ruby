# frozen_string_literal: true

# https://leetcode.com/problems/keyboard-row/
# @param {String[]} words
# @return {String[]}
def find_words(words)
  first_row = 'qwertyuiop'.split('').to_set
  second_row = 'asdfghjkl'.split('').to_set
  third_row = 'zxcvbnm'.split('').to_set

  result = []
  words.each do |word|
    char = word[0].downcase
    row =
      if first_row.include?(char)
        first_row
      elsif second_row.include?(char)
        second_row
      else
        third_row
      end
    can_type = true
    (1...word.length).step(1) do |i|
      char = word[i].downcase
      unless row.include?(char)
        can_type = false
        break
      end
    end

    result << word if can_type
  end

  result
end
