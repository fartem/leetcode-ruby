# frozen_string_literal: true

require_relative '../common/linked_list'

# https://leetcode.com/problems/swap-nodes-in-pairs/
# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
  return head if head.nil? || head.next.nil?

  start = ::ListNode.new(0, head)
  pointer = start

  while pointer&.next&.next
    post = pointer.next&.next&.next
    last = pointer.next
    pointer.next&.next&.next = pointer.next
    pointer.next = pointer.next&.next
    last&.next = post
    pointer = last
  end

  start.next
end
