# frozen_string_literal: true

require_relative '../common/list_node_with_random'

# @param {Node} node
# @return {Node}
def copy_random_list(head)
  nodes = {}
  p = head
  while p
    nodes[p] = ::ListNodeWithRandom.new(p.val)
    p = p.next
  end

  p = head
  while p
    node = nodes[p]
    node.next = nodes[p.next]
    node.random = nodes[p.random]
    p = p.next
  end

  nodes[head]
end
