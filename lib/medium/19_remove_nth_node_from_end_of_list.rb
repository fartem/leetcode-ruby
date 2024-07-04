# frozen_string_literal: true

# https://leetcode.com/problems/remove-nth-node-from-end-of-list/
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  nodes = []
  curr = head

  until curr.nil?
    nodes << curr
    curr = curr.next
  end

  index = nodes.length - n
  prev = index.zero? ? nil : nodes[index - 1]
  nxt = index == nodes.length - 1 ? nil : nodes[index + 1]

  if prev.nil?
    head = nxt
  else
    prev.next = nxt
  end

  head
end
