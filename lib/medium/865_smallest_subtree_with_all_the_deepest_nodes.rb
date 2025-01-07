# frozen_string_literal: true

# https://leetcode.com/problems/smallest-subtree-with-all-the-deepest-nodes/
# @param {TreeNode} root
# @return {TreeNode}
def subtree_with_all_deepest(root)
  dfs_for_smallest_subtree(root, depth_for_smallest_subtree(root))
end

private

# @param {TreeNode} node
# @return {Integer}
def depth_for_smallest_subtree(node)
  return 0 unless node

  left = depth_for_smallest_subtree(node.left)
  right = depth_for_smallest_subtree(node.right)

  1 + [left, right].max
end

# @param {TreeNode} node
# @param {Integer} depth
# @return {TreeNode}
def dfs_for_smallest_subtree(node, depth)
  return unless node

  return node if depth == 1

  left = dfs_for_smallest_subtree(node.left, depth - 1)
  right = dfs_for_smallest_subtree(node.right, depth - 1)

  return node if left && right

  left.nil? ? right : left
end
