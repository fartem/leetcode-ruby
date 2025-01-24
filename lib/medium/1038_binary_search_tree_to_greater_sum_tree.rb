# frozen_string_literal: true

# https://leetcode.com/problems/binary-search-tree-to-greater-sum-tree/
# @param {TreeNode} root
# @return {TreeNode}
def bst_to_gst(root)
  @sum = 0
  transform_tree(root)

  root
end

private

# @param {TreeNode} node
# @return {Void}
def transform_tree(node)
  return unless node

  transform_tree(node.right)

  @sum += node.val
  node.val = @sum

  transform_tree(node.left)
end
