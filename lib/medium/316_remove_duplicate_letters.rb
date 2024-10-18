# frozen_string_literal: true

# https://leetcode.com/problems/remove-duplicate-letters/
# @param {String} s
# @return {String}
def remove_duplicate_letters(s)
  last_indices = ::Array.new(26, 0)
  s.each_char.with_index { |c, i| last_indices[c.ord - 'a'.ord] = i }

  seen = ::Array.new(26, false)
  stack = []

  s.each_char.with_index do |c, i|
    c_index = c.ord - 'a'.ord

    next if seen[c_index]

    seen[stack.pop] = false while !stack.empty? && stack.last > c_index && i < last_indices[stack.last]

    stack.push(c_index)
    seen[c_index] = true
  end

  result = ''
  result += (stack.pop + 'a'.ord).chr until stack.empty?

  result.reverse
end
