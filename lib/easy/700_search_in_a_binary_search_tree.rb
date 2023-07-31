# frozen_string_literal: true

# https://leetcode.com/problems/search-in-a-binary-search-tree/
# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}
def search_bst(root, val)
  return if root.nil?

  return root if root.val == val

  left = search_bst(root.left, val)
  right = search_bst(root.right, val)

  left.nil? ? right : left
end
