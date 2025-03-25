# frozen_string_literal: true

# https://leetcode.com/problems/merge-nodes-in-between-zeros/
# @param {ListNode} head
# @return {ListNode}
def merge_nodes2181(head)
  r_p = head.next
  p_p = head.next.next

  while p_p.next
    if p_p.val.zero?
      r_p.next = p_p.next
      r_p = r_p.next
      p_p = p_p.next
    else
      r_p.val += p_p.val
    end

    p_p = p_p.next
  end

  r_p.val += p_p.val
  r_p.next = nil

  head.next
end
