# frozen_string_literal: true

# https://leetcode.com/problems/baseball-game/
# @param {String[]} operations
# @return {Integer}
def cal_points(operations)
  stack = []
  operations.each do |op|
    case op
    when '+'
      a = stack.pop
      b = stack.pop
      stack.push(b)
      stack.push(a)
      stack.push(a + b)
    when 'D'
      stack.push(stack.last * 2)
    when 'C'
      stack.pop
    else
      stack.push(op.to_i)
    end
  end

  stack.sum
end
