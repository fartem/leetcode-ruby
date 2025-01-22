# frozen_string_literal: true

# https://leetcode.com/problems/next-greater-node-in-linked-list/
# @param {ListNode} head
# @return {Integer[]}
def next_larger_nodes(head)
  nodes = []
  pointer = head

  while pointer
    nodes << pointer.val
    pointer = pointer.next
  end

  result = ::Array.new(nodes.size, 0)
  values = []

  nodes.each_with_index do |node, i|
    result[values.pop] = node while !values.empty? && node > nodes[values.last]

    values << i
  end

  result
end
