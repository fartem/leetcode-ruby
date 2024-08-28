# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/evaluate-reverse-polish-notation/
# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  ops = ['+', '-', '*', '/'].to_set
  stack = []
  tokens.each do |token|
    if ops.include?(token)
      b = stack.pop
      a = stack.pop

      case token
      when '+'
        stack << a + b
      when '-'
        stack << a - b
      when '*'
        stack << a * b
      when '/'
        stack << (a.to_f / b).truncate
      end
    else
      stack << token.to_i
    end
  end

  stack.pop
end
