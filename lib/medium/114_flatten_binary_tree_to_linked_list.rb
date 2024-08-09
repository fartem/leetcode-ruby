# frozen_string_literal: true

# https://leetcode.com/problems/flatten-binary-tree-to-linked-list/
# @param {TreeNode} root
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
  return unless root

  return if root.left.nil? && root.right.nil?

  unless root.left.nil?
    flatten(root.left)

    temp = root.right
    root.right = root.left
    root.left = nil

    tail = root.right
    tail = tail.right until tail.right.nil?

    tail.right = temp
  end

  flatten(root.right)
end
