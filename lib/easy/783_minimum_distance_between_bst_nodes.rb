# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/minimum-distance-between-bst-nodes/
# @param {TreeNode} root
# @return {Integer}
def min_diff_in_bst(root)
  nums = []
  apply_min_diff_in_bst(root, nums)
  result = ::Float::INFINITY
  (1...nums.length).each do |i|
    diff = nums[i] - nums[i - 1]
    result = diff if diff < result
  end

  result
end

# @param {TreeNode} node
# @param {Integer[]} nums
def apply_min_diff_in_bst(node, nums)
  return if node.nil?

  apply_min_diff_in_bst(node.left, nums)
  nums << node.val
  apply_min_diff_in_bst(node.right, nums)
end
