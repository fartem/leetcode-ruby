# frozen_string_literal: true

require_relative '../common/linked_list'

# https://leetcode.com/problems/add-two-numbers/
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  sum = ::ListNode.new
  p = sum
  add = 0
  while !l1.nil? && !l2.nil?
    a = l1.val
    b = l2.val
    s = a + b + add

    if s > 9
      s -= 10
      add = 1
    else
      add = 0
    end

    p.next = ::ListNode.new(s)
    p = p.next
    l1 = l1.next
    l2 = l2.next
  end

  if !l1.nil?
    until l1.nil?
      s = l1.val + add

      if s > 9
        s -= 10
        add = 1
      else
        add = 0
      end

      p&.next = ::ListNode.new(s)
      p = p&.next
      l1 = l1.next
    end
  elsif !l2.nil?
    until l2.nil?
      s = l2.val + add

      if s > 9
        s -= 10
        add = 1
      else
        add = 0
      end

      p&.next = ::ListNode.new(s)
      p = p&.next
      l2 = l2.next
    end
  end

  p&.next = ::ListNode.new(1) if add == 1

  sum.next
end
