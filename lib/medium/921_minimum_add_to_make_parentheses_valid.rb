# frozen_string_literal: true

# https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/
# @param {String} s
# @return {Integer}
def min_add_to_make_valid(s)
  o = 0
  c = 0

  s.each_char do |char|
    if char == ')'
      if o.zero?
        c += 1
      else
        o -= 1
      end
    else
      o += 1
    end
  end

  o + c
end
