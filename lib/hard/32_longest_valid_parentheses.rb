# frozen_string_literal: true

# https://leetcode.com/problems/longest-valid-parentheses/
# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
  stack = [-1]
  result = 0
  (0...s.size).each do |i|
    if s[i] == '('
      stack << i
    else
      stack.delete_at(stack.size - 1)

      if stack.empty?
        stack << i
      else
        result = [result, i - stack.last].max
      end
    end
  end

  result
end
