# frozen_string_literal: true

require_relative '../common/binary_tree'
require_relative '../common/linked_list'

# https://leetcode.com/problems/convert-sorted-list-to-binary-search-tree/
# @param {ListNode} head
# @return {TreeNode}
def sorted_list_to_bst(head)
  return unless head

  middle = middle(head)
  node = ::TreeNode.new(middle.val)

  return node if head == middle

  node.left = sorted_list_to_bst(head)
  node.right = sorted_list_to_bst(middle.next)

  node
end

# public TreeNode sortedListToBST(ListNode head) {
#   if (head == null) {
#       return null;
#   }
#   ListNode middle = middle(head);
#   TreeNode node = new TreeNode(middle.val);
#   if (head == middle) {
#       return node;
#   }
#   node.left = sortedListToBST(head);
#   node.right = sortedListToBST(middle.next);
#   return node;
# }

private

# @param {ListNode} node
# @return {ListNode}
def middle(node)
  fast = node
  slow = node
  prev = node

  while !fast.nil? && !fast.next.nil?
    prev = slow
    slow = slow.next
    fast = fast.next.next
  end

  prev.next = nil unless prev.nil?

  slow
end
