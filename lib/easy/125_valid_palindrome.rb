# frozen_string_literal: true

# https://leetcode.com/problems/valid-palindrome/
# @param {String} s
# @return {Boolean}
def is_valid_palindrome(s)
  prepared_str = s.downcase.delete(' ').gsub(/[^0-9a-z ]/i, '')
  p = prepared_str.length - 1
  result = true
  prepared_str.each_char do |c|
    if c == prepared_str[p]
      p -= 1
    else
      result = false
      break
    end
  end

  result
end
