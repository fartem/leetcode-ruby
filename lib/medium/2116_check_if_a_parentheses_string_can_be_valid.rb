# frozen_string_literal: true

# https://leetcode.com/problems/check-if-a-parentheses-string-can-be-valid/
# @param {String} s
# @param {String} locked
# @return {Boolean}
def can_be_valid(s, locked)
  return false if s.size.odd?

  min = 0
  max = 0

  (0...s.size).each do |i|
    is_opening = s[i] == '('
    is_unlocked = locked[i] == '0'

    min += !is_opening || is_unlocked ? -1 : 1
    max += is_opening || is_unlocked ? 1 : -1

    return false if max.negative?

    min = [min, 0].max
  end

  min.zero?
end
