# frozen_string_literal: true

# https://leetcode.com/problems/substrings-of-size-three-with-distinct-characters/
# @param {String} s
# @return {Integer}
def count_good_substrings(s)
  result = 0
  (0...(s.length - 2)).each do |i|
    first = s[i]
    second = s[i + 1]
    third = s[i + 2]

    result += 1 if first != second && second != third && first != third
  end

  result
end
