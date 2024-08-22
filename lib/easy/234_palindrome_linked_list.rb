# frozen_string_literal: true

# https://leetcode.com/problems/palindrome-linked-list/
# @param {ListNode} head
# @return {Boolean}
def is_palindrome_ll(head)
  slow = head
  fast = head

  while !fast.nil? && !fast.next.nil?
    slow = slow.next
    fast = fast.next.next
  end

  slow = reverse(slow)
  until slow.nil?
    return false if slow.val != head&.val

    slow = slow.next
    head = head&.next
  end

  true
end

private

# @param {ListNode} node
# @return {ListNode}
def reverse(node)
  prev = nil
  until node.nil?
    nxt = node.next
    node.next = prev
    prev = node
    node = nxt
  end

  prev
end
