# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/minimum-remove-to-make-valid-parentheses/
# @param {String} s
# @return {String}
def min_remove_to_make_valid(s)
  stack = []

  (0...s.size).each do |i|
    curr = s[i]

    next if curr.match?(/[[:alpha:]]/)

    if curr == '('
      stack.push(i)
    elsif !stack.empty? && s[stack.last] == '('
      stack.pop
    else
      stack.push(i)
    end
  end

  result = ''
  set = stack.to_set

  (0...s.size).each { |i| result += s[i] unless set.include?(i) }

  result
end
