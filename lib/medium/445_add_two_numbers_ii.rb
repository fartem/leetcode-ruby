# frozen_string_literal: true

# https://leetcode.com/problems/add-two-numbers-ii/
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers445(l1, l2)
  r1 = reverse_list_node(l1)
  r2 = reverse_list_node(l2)
  sum = ::ListNode.new(0)
  p = sum
  carry = 0
  while r1 || r2
    a = r1.nil? ? 0 : r1.val
    b = r2.nil? ? 0 : r2.val
    c = a + b + carry

    p.next = ::ListNode.new(c % 10)
    p = p.next
    carry = c / 10

    r1 = r1&.next
    r2 = r2&.next
  end

  p.next = ::ListNode.new(carry) unless carry.zero?

  reverse_list_node(sum.next)
end

private

# @param {ListNode} head
# @return {ListNode}
def reverse_list_node(head)
  prev = nil
  curr = head
  while curr
    nxt = curr.next
    curr.next = prev
    prev = curr
    curr = nxt
  end

  prev
end
