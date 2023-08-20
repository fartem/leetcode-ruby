# frozen_string_literal: true

# https://leetcode.com/problems/binary-tree-inorder-traversal/
# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  result = []
  traverse(root, result)

  result
end

# @param {TreeNode} node
# @param {Integer[]} values
def traverse(node, values)
  return if node.nil?

  traverse(node.left, values)
  values << node.val
  traverse(node.right, values)
end
