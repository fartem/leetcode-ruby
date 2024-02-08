# frozen_string_literal: true

# https://leetcode.com/problems/check-if-numbers-are-ascending-in-a-sentence/
# @param {String} s
# @return {Boolean}
def are_numbers_ascending(s)
  prev = -1
  s.split.each do |word|
    next unless _2043_is_digit?(word[0])

    num = word.to_i

    return false if prev >= num

    prev = num
  end

  true
end

# @param {String} s
# @return {Boolean}
def _2043_is_digit?(s)
  code = s.ord

  code >= 48 && code <= 57
end
