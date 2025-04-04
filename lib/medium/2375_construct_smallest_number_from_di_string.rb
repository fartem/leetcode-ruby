# frozen_string_literal: true

# https://leetcode.com/problems/construct-smallest-number-from-di-string/
# @param {String} pattern
# @return {String}
def smallest_number2375(pattern)
  stack = [1]
  result = ''

  (0..pattern.size).each do |i|
    result += stack.pop.to_s until stack.empty? if i == pattern.size || pattern[i] == 'I'

    stack.push(i + 2)
  end

  result
end
