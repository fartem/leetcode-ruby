# frozen_string_literal: true

# https://leetcode.com/problems/merge-two-binary-trees/
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {TreeNode}
def merge_trees(root1, root2)
  return root2 if root1.nil?

  return root1 if root2.nil?

  root1.val += root2.val
  root1.left = merge_trees(root1.left, root2.left)
  root1.right = merge_trees(root1.right, root2.right)

  root1
end
