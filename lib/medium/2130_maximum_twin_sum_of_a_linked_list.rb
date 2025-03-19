# frozen_string_literal: true

# https://leetcode.com/problems/maximum-twin-sum-of-a-linked-list/
# @param {ListNode} head
# @return {Integer}
def pair_sum(head)
  slow = head
  fast = head
  first_part = head

  while fast&.next
    first_part = slow
    slow = slow.next
    fast = fast.next.next
  end

  prev = nil

  while slow
    nxt = slow.next
    slow.next = prev
    prev = slow
    slow = nxt
  end

  first_part.next = prev
  result = 0
  f = head
  s = first_part.next

  while s
    result = [result, f.val + s.val].max
    f = f.next
    s = s.next
  end

  result
end
