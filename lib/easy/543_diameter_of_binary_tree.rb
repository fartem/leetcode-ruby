# frozen_string_literal: true

$max = 0

# https://leetcode.com/problems/diameter-of-binary-tree/
# @param {TreeNode} root
# @return {Integer}
def diameter_of_binary_tree(root)
  $max = 0
  calc_max_depth(root)

  $max
end

# @param {TreeNode} node
def calc_max_depth(node)
  return 0 if node.nil?

  left = calc_max_depth(node.left)
  right = calc_max_depth(node.right)
  $max = [$max, left + right].max

  [left, right].max + 1
end
