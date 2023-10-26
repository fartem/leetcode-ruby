# frozen_string_literal: true

# https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/
# @param {String} s
# @return {Integer}
def max_depth_of_the_parentheses(s)
  curr = 0
  result = 0
  (0...s.length).each do |i|
    case s[i]
    when '('
      curr += 1

      result = curr if curr > result
    when ')'
      curr -= 1
    else
      next
    end
  end

  result
end
