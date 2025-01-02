# frozen_string_literal: true

# https://leetcode.com/problems/score-of-parentheses/
# @param {String} s
# @return {Integer}
def score_of_parentheses(s)
  stack = [0]
  s.each_char do |c|
    if c == '('
      stack << 0
    else
      a = stack.delete_at(stack.size - 1)
      b = stack.delete_at(stack.size - 1)

      stack << b + [2 * a, 1].max
    end
  end

  stack.last
end
