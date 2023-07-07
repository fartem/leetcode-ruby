# frozen_string_literal: true

# https://leetcode.com/problems/reverse-words-in-a-string-iii/
# @param {String} s
# @return {String}
def reverse_words(s)
  result = []
  s.split.each do |word|
    result << word.reverse
  end

  result.join(' ')
end
