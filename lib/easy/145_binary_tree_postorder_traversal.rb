# frozen_string_literal: true

# https://leetcode.com/problems/binary-tree-postorder-traversal/
# @param {TreeNode} root
# @return {Integer[]}
def postorder_traversal(root)
  result = []
  postorder_traverse(root, result)
  result
end

# @param {TreeNode} node
# @param {Integer[]} values
def postorder_traverse(node, values)
  return if node.nil?

  postorder_traverse(node.left, values)
  postorder_traverse(node.right, values)

  values << node.val
end
