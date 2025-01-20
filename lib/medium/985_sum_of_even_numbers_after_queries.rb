# frozen_string_literal: true

# https://leetcode.com/problems/sum-of-even-numbers-after-queries/
# @param {Integer[]} nums
# @param {Integer[][]} queries
# @return {Integer[]}
def sum_even_after_queries(nums, queries)
  result = ::Array.new(nums.length, 0)
  pointer = 0
  sum = nums.select(&:even?).sum

  queries.each do |query|
    index = query[1]
    num = nums[index]

    sum -= num if num.even?

    nums[index] += query[0]
    num = nums[index]

    sum += num if num.even?

    result[pointer] = sum
    pointer += 1
  end

  result
end
