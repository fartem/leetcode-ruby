# frozen_string_literal: true

# https://leetcode.com/problems/binary-tree-pruning/
# @param {TreeNode} root
# @return {TreeNode}
def prune_tree(root) = has_one_in_prune_tree?(root) ? root : nil

private

# @param {TreeNode} node
# @return {Boolean}
def has_one_in_prune_tree?(node)
  return false unless node

  has_one_at_left = has_one_in_prune_tree?(node.left)
  has_one_at_right = has_one_in_prune_tree?(node.right)

  node.left = nil unless has_one_at_left
  node.right = nil unless has_one_at_right

  node.val == 1 || has_one_at_left || has_one_at_right
end
