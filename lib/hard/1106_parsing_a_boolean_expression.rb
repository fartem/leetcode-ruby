# frozen_string_literal: false

# https://leetcode.com/problems/parsing-a-boolean-expression/
# @param {String} expression
# @return {Boolean}
def parse_bool_expr(expression) = calc_bool_expr(expression, 0, expression.size - 1)

private

# @param {String} e
# @param {String} l
# @param {String} h
# @return {Boolean}
def calc_bool_expr(e, l, h)
  return e[l] == 't' if l == h

  op = e[l]
  c = 0
  prev = l + 2
  result = op != '|'

  ((l + 1)..h).each do |i|
    v = e[i]

    case v
    when '('
      c += 1
    when ')'
      c -= 1
    end

    next unless (c == 1 && v == ',') || (c.zero? && v == ')')

    next_result = calc_bool_expr(e, prev, i - 1)
    prev = i + 1

    case op
    when '|'
      result ||= next_result
    when '&'
      result &&= next_result
    else
      result = !next_result
    end
  end

  result
end
