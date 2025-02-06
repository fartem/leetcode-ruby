# frozen_string_literal: true

# https://leetcode.com/problems/delete-leaves-with-a-given-value/
# @param {TreeNode} root
# @param {Integer} target
# @return {TreeNode}
def remove_leaf_nodes(root, target)
  return unless root

  root.left = remove_leaf_nodes(root.left, target)
  root.right = remove_leaf_nodes(root.right, target)

  return if root.val == target && !root.left && !root.right

  root
end
