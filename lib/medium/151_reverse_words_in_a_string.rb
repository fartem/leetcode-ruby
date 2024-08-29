# frozen_string_literal: true

# https://leetcode.com/problems/reverse-words-in-a-string/
# @param {String} s
# @return {String}
def reverse_words151(s)
  result = []
  word = []
  s.each_char do |c|
    if c =~ /[a-zA-Z0-9]/
      word << c
    else
      result << word.join unless word.empty?

      word.clear
    end
  end

  result << word.join unless word.empty?

  result.reverse.join(' ')
end
