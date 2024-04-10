# frozen_string_literal: true

# https://leetcode.com/problems/percentage-of-letter-in-string/
# @param {String} s
# @param {Character} letter
# @return {Integer}
def percentage_letter(s, letter)
  (s.count(letter).to_f / s.length * 100).to_i
end
