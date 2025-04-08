# frozen_string_literal: true

# https://leetcode.com/problems/reverse-odd-levels-of-binary-tree/
# @param {TreeNode} root
# @return {TreeNode}
def reverse_odd_levels(root)
  traverse_for_reverse_odd_levels(root.left, root.right, 1)

  root
end

private

# @param {TreeNode} left
# @param {TreeNode} right
# @param {Integer} level
# @return {Void}
def traverse_for_reverse_odd_levels(left, right, level)
  return if !left || !right

  unless level.even?
    temp = left.val
    left.val = right.val
    right.val = temp
  end

  traverse_for_reverse_odd_levels(left.left, right.right, level + 1)
  traverse_for_reverse_odd_levels(left.right, right.left, level + 1)
end
