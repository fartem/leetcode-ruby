# frozen_string_literal: true

# https://leetcode.com/problems/remove-linked-list-elements/
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  head = head.next while !head.nil? && head.val == val

  curr = head
  while !curr.nil? && !curr.next.nil?
    if curr.next.val == val
      curr.next = curr.next.next
    else
      curr = curr.next
    end
  end

  head
end
