# frozen_string_literal: true

# https://leetcode.com/problems/symmetric-tree/
# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
  is_mirror(root.left, root.right)
end

# @param {TreeNode} left
# @param {TreeNode} right
def is_mirror(left, right)
  return true if left.nil? && right.nil?
  return false if left.nil? || right.nil?

  curr_eq = left.val == right.val
  left_eq = is_mirror(left.left, right.right)
  right_eq = is_mirror(left.right, right.left)

  curr_eq && left_eq && right_eq
end
