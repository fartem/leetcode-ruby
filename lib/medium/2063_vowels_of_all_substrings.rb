# frozen_string_literal: true

# https://leetcode.com/problems/vowels-of-all-substrings/
# @param {String} word
# @return {Integer}
def count_vowels(word)
  vowels = %w[a e i o u]
  result = 0

  word.chars.each_with_index do |char, i|
    result += (i + 1) * (word.size - i) if vowels.include?(char.downcase)
  end

  result
end
