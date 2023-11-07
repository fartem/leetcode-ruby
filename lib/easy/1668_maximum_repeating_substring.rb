# frozen_string_literal: true

# https://leetcode.com/problems/maximum-repeating-substring/
# @param {String} sequence
# @param {String} word
# @return {Integer}
def max_repeating(sequence, word)
  result = 0
  sub = word
  while sequence.include?(sub)
    result += 1
    sub += word
  end

  result
end
