# frozen_string_literal: true

# https://leetcode.com/problems/check-if-binary-string-has-at-most-one-segment-of-ones/
# @param {String} s
# @return {Boolean}
def check_ones_segment(s)
  after_segment = false
  s.each_char do |seg|
    if seg == '0'
      after_segment = true
    elsif after_segment
      return false
    end
  end

  true
end
