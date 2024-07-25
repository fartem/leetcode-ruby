# frozen_string_literal: true

# https://leetcode.com/problems/reverse-linked-list-ii/
# @param {ListNode} head
# @param {Integer} left
# @param {Integer} right
# @return {ListNode}
def reverse_between(head, left, right)
  return if head.nil?

  curr = head
  prev = nil

  while left > 1
    prev = curr
    curr = curr.next

    left -= 1
    right -= 1
  end

  con = prev
  tail = curr

  while right.positive?
    nxt = curr.next
    curr.next = prev
    prev = curr
    curr = nxt

    right -= 1
  end

  if con.nil?
    head = prev
  else
    con.next = prev
  end

  tail.next = curr

  head
end
