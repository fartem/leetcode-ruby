# frozen_string_literal: true

# https://leetcode.com/problems/occurrences-after-bigram/
# @param {String} text
# @param {String} first
# @param {String} second
# @return {String[]}
def find_occurrences(text, first, second)
  result = []
  words = text.split
  (0...words.length - 2).each do |i|
    result << words[i + 2] if words[i] == first && words[i + 1] == second
  end

  result
end
