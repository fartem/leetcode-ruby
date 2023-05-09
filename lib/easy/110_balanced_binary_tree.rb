# frozen_string_literal: true

# https://leetcode.com/problems/balanced-binary-tree/
# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
  return true if root.nil?

  left_height = max_height(root.left)
  right_height = max_height(root.right)

  left = is_balanced(root.left)
  right = is_balanced(root.right)

  (left_height - right_height).abs < 2 && left && right
end

# @param {TreeNode} root
# @return {Integer}
def max_height(node)
  return 0 if node.nil?

  [max_height(node.left), max_height(node.right)].max + 1
end
