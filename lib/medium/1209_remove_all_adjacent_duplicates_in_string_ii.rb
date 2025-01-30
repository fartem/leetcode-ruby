# frozen_string_literal: true

# https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string-ii/
# @param {String} s
# @param {Integer} k
# @return {String}
def remove_duplicates_adjacent(s, k)
  stack = []

  s.each_char do |c|
    if !stack.empty? && c == stack.last[0]
      if stack.last[1] == k - 1
        stack.pop
      else
        stack.last[1] += 1
      end
    else
      stack << [c, 1]
    end
  end

  stack.map { |char, count| char * count }.join
end
