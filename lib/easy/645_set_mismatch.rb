# frozen_string_literal: true

# https://leetcode.com/problems/set-mismatch/
# @param {Integer[]} nums
# @return {Integer[]}
def find_error_nums(nums)
  rep = 0
  uniq = ::Array.new(nums.length + 1, 0)
  nums.each do |num|
    if uniq[num] == 1
      rep = num
    else
      uniq[num] = 1
    end
  end

  miss = 0
  (1..nums.length + 1).each do |i|
    if uniq[i].zero?
      miss = i
      break
    end
  end

  [rep, miss]
end
