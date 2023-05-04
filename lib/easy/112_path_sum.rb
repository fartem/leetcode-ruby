# frozen_string_literal: true

# @param {TreeNode} root
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
  sum(root, target_sum, 0)
end

# @param {TreeNode} node
# @param {Integer} target
# @param {Integer} curr
# @return {Boolean}
def sum(node, target, curr)
  return false if node.nil?
  return curr + node.val == target if node.left.nil? && node.right.nil?

  sum(node.left, target, curr + node.val) || sum(node.right, target, curr + node.val)
end
