# frozen_string_literal: true

# https://leetcode.com/problems/swapping-nodes-in-a-linked-list/
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def swap_nodes(head, k)
  nodes = []
  pointer = head

  while pointer
    nodes << pointer

    pointer = pointer.next
  end

  first = nodes[k - 1]
  second = nodes[nodes.size - k]
  temp = first.val
  first.val = second.val
  second.val = temp

  head
end
