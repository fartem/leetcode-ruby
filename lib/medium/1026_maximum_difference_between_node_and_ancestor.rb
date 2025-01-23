# frozen_string_literal: true

# https://leetcode.com/problems/maximum-difference-between-node-and-ancestor/
# @param [TreeNode] root
# @return [Integer]
def max_ancestor_diff(root)
  calculate_max_ancestor_diff(root, root.val, root.val)
end

private

# @param {TreeNode} node
# @param {Integer} min
# @param {Integer} max
# @return {Integer}
def calculate_max_ancestor_diff(node, min, max)
  return 0 if node.nil?

  min = [node.val, min].min
  max = [node.val, max].max

  left = calculate_max_ancestor_diff(node.left, min, max)
  right = calculate_max_ancestor_diff(node.right, min, max)

  [left, right, max - min].max
end
