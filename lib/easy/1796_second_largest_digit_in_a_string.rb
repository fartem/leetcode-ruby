# frozen_string_literal: true

# https://leetcode.com/problems/second-largest-digit-in-a-string/
# @param {String} s
# @return {Integer}
def second_highest(s)
  max = -1
  result = -1
  (0...s.length).each do |i|
    c = s[i]

    next unless is_digit?(c)

    num = c.to_i
    if num > max
      result = max
      max = num
    elsif num > result && num != max
      result = num
    end
  end

  result
end

# @param {String} s
# @return {Boolean}
def is_digit?(s)
  code = s.ord

  code >= 48 && code <= 57
end
