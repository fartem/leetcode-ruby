# frozen_string_literal: true

# https://leetcode.com/problems/count-sorted-vowel-strings/
# @param {Integer} n
# @return {Integer}
def count_vowel_strings(n)
  (n + 4) * (n + 3) * (n + 2) * (n + 1) / 24
end
