# frozen_string_literal: true

require_relative '../common/linked_list'

# https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates82(head)
  result = ::ListNode.new(0, head)
  prev = result

  until head.nil?
    if !head.next.nil? && head.val == head.next.val
      head = head.next while !head.next.nil? && head.val == head.next.val

      prev.next = head.next
    else
      prev = prev.next
    end

    head = head.next
  end

  result.next
end
