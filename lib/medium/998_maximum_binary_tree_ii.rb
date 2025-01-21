# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/maximum-binary-tree-ii/
# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}
def insert_into_max_tree(root, val)
  return unless root

  if root.val < val
    node = ::TreeNode.new(val)
    node.left = root

    return node
  else
    root.right =
      if root.right
        insert_into_max_tree(root.right, val)
      else
        ::TreeNode.new(val)
      end
  end

  root
end
