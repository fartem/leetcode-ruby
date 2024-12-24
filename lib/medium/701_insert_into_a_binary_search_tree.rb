# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/insert-into-a-binary-search-tree/
# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}
def insert_into_bst(root, val)
  return ::TreeNode.new(val) unless root

  if val < root.val
    root.left = insert_into_bst(root.left, val)
  else
    root.right = insert_into_bst(root.right, val)
  end

  root
end
