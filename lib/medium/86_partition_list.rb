# frozen_string_literal: true

require_relative '../common/linked_list'

# https://leetcode.com/problems/partition-list/
# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
  f = ::ListNode.new
  f_p = f
  s = ::ListNode.new
  s_p = s

  until head.nil?
    if head.val < x
      f_p.next = ::ListNode.new(head.val)
      f_p = f_p.next
    else
      s_p.next = ::ListNode.new(head.val)
      s_p = s_p.next
    end

    head = head.next
  end

  f_p&.next = s.next

  f.next
end
