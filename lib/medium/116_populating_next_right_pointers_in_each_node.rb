# frozen_string_literal: true

require_relative '../common/next_tree_node'

# https://leetcode.com/problems/populating-next-right-pointers-in-each-node/
# @param {NextTreeNode} root
# @return {NextTreeNode}
def connect(root)
  return unless root

  if root.left
    root.left.next = root.right
    connect(root.left)
    root.right.next = root.next ? root.next.left : nil
    connect(root.right)
  end

  root
end
