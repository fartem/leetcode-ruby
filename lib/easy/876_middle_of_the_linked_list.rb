# frozen_string_literal: true

# https://leetcode.com/problems/middle-of-the-linked-list/
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
  slow = head
  fast = head
  while !fast.nil? && !fast.next.nil?
    slow = slow.next
    fast = fast.next.next
  end

  slow
end
