# frozen_string_literal: true

# https://leetcode.com/problems/valid-parentheses/
# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  s.each_char do |ch|
    # noinspection RubyCaseWithoutElseBlockInspection
    case ch
    when '(', '[', '{'
      stack << ch
    when ')'
      return false if stack.pop != '('
    when ']'
      return false if stack.pop != '['
    when '}'
      return false if stack.pop != '{'
    end
  end

  stack.empty?
end
