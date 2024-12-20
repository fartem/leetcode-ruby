# frozen_string_literal: true

# https://leetcode.com/problems/trim-a-binary-search-tree/
# @param {TreeNode} root
# @param {Integer} low
# @param {Integer} high
# @return {TreeNode}
def trim_bst(root, low, high)
  return unless root

  return trim_bst(root.left, low, high) if root.val > high

  return trim_bst(root.right, low, high) if root.val < low

  root.left = trim_bst(root.left, low, high)
  root.right = trim_bst(root.right, low, high)

  root
end
