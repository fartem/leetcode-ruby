# frozen_string_literal: true

require_relative '../common/linked_list'

# https://leetcode.com/problems/insertion-sort-list/
# @param {ListNode} head
# @return {ListNode}
def insertion_sort_list(head)
  result = ::ListNode.new
  curr = head

  while curr
    prev = result

    prev = prev.next while prev.next && prev.next.val <= curr.val

    nxt = curr.next
    curr.next = prev.next
    prev.next = curr
    curr = nxt
  end

  result.next
end
