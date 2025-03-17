# frozen_string_literal: true

# https://leetcode.com/problems/delete-the-middle-node-of-a-linked-list/
# @param {ListNode} head
# @return {ListNode}
def delete_middle(head)
  prev = nil
  slow = head
  fast = head

  while fast&.next
    prev = slow
    slow = slow.next
    fast = fast.next.next
  end

  return unless prev

  prev.next = slow.next

  head
end
