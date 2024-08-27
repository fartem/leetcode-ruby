# frozen_string_literal: true

# https://leetcode.com/problems/sort-list/
# @param {ListNode} head
# @return {ListNode}
def sort_list(head)
  return head if head.nil? || head.next.nil?

  temp = head
  slow = head
  fast = head

  while fast&.next
    temp = slow
    slow = slow.next
    fast = fast.next.next
  end

  temp.next = nil

  left = sort_list(head)
  right = sort_list(slow)

  merge_nodes(left, right)
end

private

# @param {ListNode} left
# @param {ListNode} right
# @return {ListNode}
def merge_nodes(left, right)
  temp = ::ListNode.new(0)
  curr = temp

  while left && right
    if left.val < right.val
      curr.next = left
      left = left.next
    else
      curr.next = right
      right = right.next
    end

    curr = curr.next
  end

  curr.next = left if left
  curr.next = right if right

  temp.next
end
