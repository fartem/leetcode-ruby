# frozen_string_literal: true

# https://leetcode.com/problems/valid-parenthesis-string/
# @param {String} s
# @return {Boolean}
def check_valid_string(s)
  l = 0
  h = 0
  s.each_char do |c|
    l += c == '(' ? 1 : -1
    h += c == ')' ? -1 : 1

    break if h.negative?

    l = [l, 0].max
  end

  l.zero?
end
