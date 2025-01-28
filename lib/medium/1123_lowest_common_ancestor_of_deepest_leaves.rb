# frozen_string_literal: true

# https://leetcode.com/problems/lowest-common-ancestor-of-deepest-leaves/
# @param {TreeNode} root
# @return {TreeNode}
def lca_deepest_leaves(root)
  return unless root

  find_deepest_and_lca(root, 0)[1]
end

private

# @param {TreeNode} node
# @param {Integer} depth
# @return {TreeNode}
def find_deepest_and_lca(node, depth)
  return [depth, node] unless node

  left_depth, left_lca = find_deepest_and_lca(node.left, depth + 1)
  right_depth, right_lca = find_deepest_and_lca(node.right, depth + 1)

  if left_depth == right_depth
    [left_depth, node]
  elsif left_depth > right_depth
    [left_depth, left_lca]
  else
    [right_depth, right_lca]
  end
end
