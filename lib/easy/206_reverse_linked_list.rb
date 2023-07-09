# frozen_string_literal: true

# https://leetcode.com/problems/isomorphic-strings/
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  prev = nil
  curr = head
  until curr.nil?
    nxt = curr.next
    curr.next = prev
    prev = curr
    curr = nxt
  end

  prev
end
