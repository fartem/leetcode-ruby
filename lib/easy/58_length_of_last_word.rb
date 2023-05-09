# frozen_string_literal: true

# https://leetcode.com/problems/length-of-last-word/
# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  s.split.last.length
end
