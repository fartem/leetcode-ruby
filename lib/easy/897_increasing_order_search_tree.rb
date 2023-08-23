# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/increasing-order-search-tree/
# @param {TreeNode} root
# @return {TreeNode}
def increasing_bst(root)
  result = ::TreeNode.new
  $curr = result
  inorder_iost(root)

  result.right
end

$curr = nil

# @param {TreeNode} node
def inorder_iost(node)
  return if node.nil?

  inorder_iost(node.left)
  node.left = nil
  $curr.right = node
  $curr = node
  inorder_iost(node.right)
end
