# frozen_string_literal: true

# https://leetcode.com/problems/count-good-nodes-in-binary-tree/
# @param {TreeNode} root
# @return {Integer}
def good_nodes(root) = dfs_for_good_nodes(root, root.val)

private

# @param {TreeNode} node
# @param {Integer} curr_max
# @return {Integer}
def dfs_for_good_nodes(node, curr_max)
  return 0 unless node

  left = dfs_for_good_nodes(node.left, [curr_max, node.val].max)
  right = dfs_for_good_nodes(node.right, [curr_max, node.val].max)

  (node.val >= curr_max ? 1 : 0) + left + right
end
