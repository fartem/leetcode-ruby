# frozen_string_literal: true

# https://leetcode.com/problems/find-the-minimum-and-maximum-number-of-nodes-between-critical-points/
# @param {ListNode} head
# @return {Integer[]}
def nodes_between_critical_points(head)
  prev = head
  p = head.next
  index = 2
  first_index = -1
  prev_index = -1
  min = ::Float::INFINITY

  while !p.nil? && !p.next.nil?
    if (prev.val > p.val && p.next.val > p.val) || (prev.val < p.val && p.next.val < p.val)
      first_index = index if first_index == -1
      min = [min, index - prev_index].min if prev_index != -1
      prev_index = index
    end

    prev = p
    p = p.next
    index += 1
  end

  min == ::Float::INFINITY ? [-1, -1] : [min, prev_index - first_index]
end
