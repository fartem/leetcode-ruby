# frozen_string_literal: true

# https://leetcode.com/problems/binary-tree-preorder-traversal/
# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
  result = []
  preorder_traverse(root, result)

  result
end

# @param {TreeNode} node
# @param {Integer[]} values
def preorder_traverse(node, values)
  return if node.nil?

  values << node.val
  preorder_traverse(node.left, values)
  preorder_traverse(node.right, values)
end
