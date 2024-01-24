# frozen_string_literal: true

# https://leetcode.com/problems/number-of-strings-that-appear-as-substrings-in-word/
# @param {String[]} patterns
# @param {String} word
# @return {Integer}
def num_of_strings(patterns, word)
  patterns.count { |pattern| word.include?(pattern) }
end
