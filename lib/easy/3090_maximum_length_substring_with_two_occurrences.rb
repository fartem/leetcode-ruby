# frozen_string_literal: true

# https://leetcode.com/problems/maximum-length-substring-with-two-occurrences/
# @param {String} s
# @return {Integer}
def maximum_length_substring(s)
  max_len = 0
  left = 0
  char_count = ::Hash.new(0)

  s.each_char.with_index do |char, right|
    char_count[char] += 1

    while char_count[char] > 2
      char_count[s[left]] -= 1
      left += 1
    end

    current_len = right - left + 1
    max_len = [max_len, current_len].max
  end

  max_len
end
