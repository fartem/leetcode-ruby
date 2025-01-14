# frozen_string_literal: false

# https://leetcode.com/problems/number-of-visible-people-in-a-queue/
# @param {Integer[]} heights
# @return {Integer[]}
def can_see_persons_count(heights)
  length = heights.length
  stack = []
  result = ::Array.new(length, 0)

  (length - 1).downto(0) do |i|
    count = 0
    curr = heights[i]

    while !stack.empty? && stack.last < curr
      count += 1
      stack.pop
    end

    result[i] = count + (stack.empty? ? 0 : 1)

    stack << curr
  end

  result
end
