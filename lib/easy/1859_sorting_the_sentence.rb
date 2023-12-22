# frozen_string_literal: true

# https://leetcode.com/problems/sorting-the-sentence/
# @param {String} s
# @return {String}
def sort_sentence(s)
  s
    .split
    .sort { |a, b| a[-1] <=> b[-1] }
    .map { |a| a[0..-2] }
    .join(' ')
end
