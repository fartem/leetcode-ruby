# frozen_string_literal: true

# https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/
# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum167(numbers, target)
  start = 0
  nd = numbers.size - 1
  until start == nd
    sum = numbers[start] + numbers[nd]

    if sum > target
      nd -= 1
    elsif sum < target
      start += 1
    else
      break
    end
  end

  [start + 1, nd + 1]
end
