# frozen_string_literal: true

# https://leetcode.com/problems/reverse-nodes-in-k-group/
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def reverse_k_group(head, k)
  return unless head

  return head unless has_next_for_reverse_k_group(head, k)

  prev = nil
  curr = head
  nxt =  nil
  count = 0

  while curr && count < k
    nxt = curr.next
    curr.next = prev
    prev = curr
    curr = nxt

    count += 1
  end

  head.next = reverse_k_group(nxt, k)

  prev
end

private

# @param {ListNode} head
# @param {Integer} k
# @return {Boolean}
def has_next_for_reverse_k_group(head, k)
  count = 0
  p = head
  while count != k && !p.nil?
    p = p.next
    count += 1
  end

  count == k
end
