# frozen_string_literal: true

# https://leetcode.com/problems/smallest-subsequence-of-distinct-characters/
# @param {String} s
# @return {String}
def smallest_subsequence(s)
  last_indices = {}
  s.each_char.with_index { |c, i| last_indices[c] = i }

  seen = ::Set.new
  stack = []

  s.each_char.with_index do |c, i|
    next if seen.include?(c)

    seen.delete(stack.pop) while !stack.empty? && c < stack.last && i < last_indices[stack.last]

    stack << c
    seen << c
  end

  stack.join
end
