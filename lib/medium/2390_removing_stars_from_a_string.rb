# frozen_string_literal: true

# https://leetcode.com/problems/removing-stars-from-a-string/
# @param {String} s
# @return {String}
def remove_stars(s)
  stack = []

  s.each_char do |char|
    if char == '*'
      stack.pop unless stack.empty?
    else
      stack.push(char)
    end
  end

  stack.join
end
