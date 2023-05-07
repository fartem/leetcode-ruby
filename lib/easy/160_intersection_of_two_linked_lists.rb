# frozen_string_literal: true

# @param {ListNode} head_a
# @param {ListNode} head_b
# @return {ListNode}
def get_intersection_node(head_a, head_b)
  p_a = head_a
  p_b = head_b

  while p_a != p_b
    p_a = p_a.nil? ? head_b : p_a.next
    p_b = p_b.nil? ? head_a : p_b.next
  end

  p_a
end
