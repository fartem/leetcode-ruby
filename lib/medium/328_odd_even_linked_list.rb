# frozen_string_literal: true

# https://leetcode.com/problems/odd-even-linked-list/
# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
  return if head.nil?

  odd = head
  even = head.next
  even_head = even
  while !even.nil? && !even.next.nil?
    odd.next = even.next
    odd = odd.next
    even.next = odd.next
    even = even.next
  end

  odd.next = even_head

  head
end
