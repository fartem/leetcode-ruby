# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def is_valid_palindrome(s)
  prepared_str = s.downcase.delete(' ').gsub(/[^0-9a-z ]/i, '')
  p = prepared_str.length - 1
  result = true
  (0...prepared_str.length).step(1) do |i|
    if prepared_str[i] == prepared_str[p]
      p -= 1
    else
      result = false
      break
    end
  end
  result
end
