# frozen_string_literal: true

require_relative '../common/linked_list'

# https://leetcode.com/problems/merge-k-sorted-lists/
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  return if lists.size.zero?

  new_head = ::ListNode.new(0, lists[0])
  (1...lists.size).each do |i|
    a = new_head.next
    b = lists[i]
    prev = new_head

    while a && b
      if a.val >= b.val
        prev.next = ::ListNode.new(b.val)
        prev.next.next = a
        b = b.next
        a = prev.next

        next
      end

      prev = a
      a = a.next
    end

    prev.next = b if b
  end

  new_head.next
end
