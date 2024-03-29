# frozen_string_literal: true

# https://leetcode.com/problems/path-sum/
# @param {TreeNode} root
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
  sum112(root, target_sum, 0)
end

# @param {TreeNode} node
# @param {Integer} target
# @param {Integer} curr
# @return {Boolean}
def sum112(node, target, curr)
  return false if node.nil?

  return curr + node.val == target if node.left.nil? && node.right.nil?

  sum112(node.left, target, curr + node.val) || sum112(node.right, target, curr + node.val)
end
