# frozen_string_literal: true

# https://leetcode.com/problems/basic-calculator-ii/
# @param {String} s
# @return {Integer}
def calculate(s)
  stack = []
  curr = 0
  op = '+'

  s.each_char do |c|
    if c.match?(/[0-9]/)
      curr = curr * 10 + c.to_i
    elsif c != ' '
      stack.push(
        perform_operation(
          stack,
          op,
          curr
        )
      )

      curr = 0
      op = c
    end
  end

  stack.push(
    perform_operation(
      stack,
      op,
      curr
    )
  )

  stack.sum
end

private

# @param {Array} stack
# @param {String} op
# @param {Integer} num
# @return {Integer}
def perform_operation(stack, op, num)
  case op
  when '+'
    num
  when '-'
    -num
  when '*'
    stack.pop * num
  when '/'
    (stack.pop.to_f / num).to_i
  end
end
