# frozen_string_literal: true

# https://leetcode.com/problems/longest-palindrome/
# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  letters = ::Hash.new(0)
  s.each_char { |c| letters[c] += 1 }

  result = 0
  middle = 0
  letters.each_value do |value|
    if (value % 2).zero?
      result += value
    else
      result += value - 1 unless (value - 1).zero?
      middle = 1
    end
  end

  result + middle
end
