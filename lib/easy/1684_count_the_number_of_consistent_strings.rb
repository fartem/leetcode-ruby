# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/count-the-number-of-consistent-strings/
# @param {String} allowed
# @param {String[]} words
# @return {Integer}
def count_consistent_strings(allowed, words)
  allowed_chars = allowed.split('').to_set
  result = words.length
  words.each do |word|
    word.each_char do |c|
      next if allowed_chars.include?(c)

      result -= 1

      break
    end
  end

  result
end
