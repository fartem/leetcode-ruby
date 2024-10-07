# frozen_string_literal: true

# https://leetcode.com/problems/delete-node-in-a-linked-list/
# @param {ListNode} node
# @return {Void} Do not return anything, modify node in-place instead.
def delete_node(node)
  node.val = node.next.val
  node.next = node.next.next
end
