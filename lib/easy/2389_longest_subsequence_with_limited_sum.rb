# frozen_string_literal: true

# https://leetcode.com/problems/longest-subsequence-with-limited-sum/
# @param {Integer[]} nums
# @param {Integer[]} queries
# @return {Integer[]}
def answer_queries(nums, queries)
  result = []
  nums.sort!
  (0...queries.length).each do |i|
    sum = 0
    j = 0

    while j < nums.length
      num = nums[j]
      if sum + num > queries[i]
        result[i] = j

        break
      end

      sum += num
      j += 1
    end

    result[i] = j if j == nums.length
  end

  result
end
