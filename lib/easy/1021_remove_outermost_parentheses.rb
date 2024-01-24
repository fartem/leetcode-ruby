# frozen_string_literal: true

# https://leetcode.com/problems/remove-outermost-parentheses/
# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
  result = []
  counter = 0
  s.each_char do |c|
    result << c unless (counter.zero? && c == '(') || (counter == 1 && c == ')')
    counter += 1 if c == '('
    counter -= 1 if c == ')'
  end

  result.join
end
