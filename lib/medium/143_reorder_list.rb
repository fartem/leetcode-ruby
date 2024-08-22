# frozen_string_literal: true

require_relative '../common/linked_list'

# https://leetcode.com/problems/reorder-list/
# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
  tort = head
  hare = head.next
  while hare&.next
    tort = tort.next
    hare = hare.next.next
  end

  f_part = head
  s_part = tort.next
  tort.next = nil
  s_part = reverse_in_reorder(s_part)

  temp = ::ListNode.new
  curr = temp
  while f_part || s_part
    if f_part
      curr.next = f_part
      curr = curr.next
      f_part = f_part.next
    end

    next unless s_part

    curr.next = s_part
    curr = curr.next
    s_part = s_part.next
  end

  # rubocop:disable Lint/UselessAssignment
  head = temp.next
  # rubocop:enable Lint/UselessAssignment
end

private

# @param {ListNode} head
# @return {ListNode}
def reverse_in_reorder(head)
  prev = nil
  curr = head
  until curr.nil?
    nxt = curr.next
    curr.next = prev
    prev = curr
    curr = nxt
  end

  prev
end
