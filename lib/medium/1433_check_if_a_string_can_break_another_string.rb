# frozen_string_literal: true

# https://leetcode.com/problems/check-if-a-string-can-break-another-string/
# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_if_can_break(s1, s2)
  c1 = s1.chars.to_a.sort
  c2 = s2.chars.to_a.sort

  is_asc = true
  is_desc = true

  (0...c1.size).each do |i|
    f = c1[i]
    s = c2[i]

    if f < s
      is_desc = false
    elsif f > s
      is_asc = false
    end
  end

  is_asc || is_desc
end
