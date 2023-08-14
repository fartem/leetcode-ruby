# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/minimum-distance-between-bst-nodes/
# @param {TreeNode} root
# @return {Integer}
def min_diff_in_bst(root)
  nums = []
  apply(root, nums)
  result = 1_000_000_000
  (1...nums.length).step(1) do |i|
    diff = nums[i] - nums[i - 1]
    result = diff if diff < result
  end

  result
end

# @param {TreeNode} node
# @param {Integer[]} nums
def apply(node, nums)
  return if node.nil?

  apply(node.left, nums)
  nums << node.val
  apply(node.right, nums)
end
