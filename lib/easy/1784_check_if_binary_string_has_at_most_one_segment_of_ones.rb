# frozen_string_literal: true

# https://leetcode.com/problems/check-if-binary-string-has-at-most-one-segment-of-ones/
# @param {String} s
# @return {Boolean}
def check_ones_segment(s)
  return false if s[0] == '0'

  after_segment = false
  (1...s.length).each do |i|
    digit = s[i]

    if digit == '0'
      after_segment = true
    elsif after_segment
      return false
    end
  end

  true
end
