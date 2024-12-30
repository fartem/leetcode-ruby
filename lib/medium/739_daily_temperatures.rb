# frozen_string_literal: true

# https://leetcode.com/problems/daily-temperatures/
# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  result = ::Array.new(temperatures.size, 0)
  stack = []
  (0...temperatures.size).each do |i|
    while !stack.empty? && temperatures[i] > temperatures[stack.last]
      index = stack.delete_at(stack.size - 1)
      result[index] = i - index
    end

    stack << i
  end

  result
end
