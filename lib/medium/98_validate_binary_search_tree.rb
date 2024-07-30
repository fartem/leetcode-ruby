# frozen_string_literal: true

# https://leetcode.com/problems/validate-binary-search-tree/
# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root)
  is_bst(root, nil, nil)
end

private

# @param {TreeNode} root
# @param {TreeNode} left
# @param {TreeNode} right
# @return {Boolean}
def is_bst(node, left, right)
  return true unless node

  return false if !left.nil? && node.val <= left.val

  return false if !right.nil? && node.val >= right.val

  is_bst(node.left, left, node) && is_bst(node.right, node, right)
end
