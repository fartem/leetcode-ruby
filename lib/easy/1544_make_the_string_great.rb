# frozen_string_literal: true

# https://leetcode.com/problems/make-the-string-great/
# @param {String} s
# @return {String}
def make_good(s)
  stack = []
  (0...s.length).each do |i|
    c = s[i]
    if !stack.empty? && (stack.last.ord - c.ord).abs == 32
      stack.pop
    else
      stack.push(c)
    end
  end

  stack.join
end
