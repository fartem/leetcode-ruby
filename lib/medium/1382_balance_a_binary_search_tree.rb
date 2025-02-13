# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/balance-a-binary-search-tree/
# @param {TreeNode} root
# @return {TreeNode}
def balance_bst(root)
  nums = []
  dfs_for_balance_bst(root, nums)

  build_for_balance_bst(nums, 0, nums.size - 1)
end

private

# @param {TreeNode} node
# @param {Integer} nums
# @return {Void}
def dfs_for_balance_bst(node, nums)
  return unless node

  dfs_for_balance_bst(node.left, nums)
  nums << node.val
  dfs_for_balance_bst(node.right, nums)
end

# @param {Integer[]} nums
# @param {Integer} left
# @param {Integer} right
# @return {TreeNode}
def build_for_balance_bst(nums, left, right)
  return if left > right

  middle = left + (right - left) / 2
  node = ::TreeNode.new(nums[middle])
  node.left = build_for_balance_bst(nums, left, middle - 1)
  node.right = build_for_balance_bst(nums, middle + 1, right)

  node
end
