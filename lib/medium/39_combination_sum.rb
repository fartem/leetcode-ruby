# frozen_string_literal: true

# https://leetcode.com/problems/combination-sum/
# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
  combine_sum(candidates, target, [], [])
end

private

# @param {Integer[]} candidates
# @param {Integer} target
# @param {Integer[][]} result
# @param {Integer[]} curr
# @return {Integer[][]}
def combine_sum(candidates, target, result, curr)
  find_combination(candidates, target, 0, result, curr)

  result
end

# @param {Integer[]} candidates
# @param {Integer} target
# @param {Integer} start
# @param {Integer[][]} result
# @param {Integer[]} curr
# @return {Void}
def find_combination(candidates, target, start, result, curr)
  if target.zero?
    result << curr.dup

    return
  end

  return if target.negative?

  (start...candidates.length).each do |i|
    curr << candidates[i]
    find_combination(candidates, target - candidates[i], i, result, curr)
    curr.delete_at(curr.length - 1)
  end
end
