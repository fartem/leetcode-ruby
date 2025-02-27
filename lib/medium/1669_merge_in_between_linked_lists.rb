# frozen_string_literal: true

# https://leetcode.com/problems/merge-in-between-linked-lists/
# @param {ListNode} list1
# @param {Integer} a
# @param {Integer} b
# @param {ListNode} list2
# @return {ListNode}
def merge_in_between(list1, a, b, list2)
  node_a = nil
  node_b = nil
  pointer = list1
  count = 0

  a -= 1
  b += 1

  while pointer
    if count == a
      node_a = pointer
    elsif count == b
      node_b = pointer
    end

    count += 1
    pointer = pointer.next
  end

  return list1 unless node_a

  node_a.next = list2

  if node_b
    pointer = list2

    pointer = pointer.next while pointer.next

    pointer.next = node_b
  end

  list1
end
