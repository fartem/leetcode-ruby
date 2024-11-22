# frozen_string_literal: true

# https://leetcode.com/problems/add-two-numbers-ii/
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers445(l1, l2)
  first_num = []
  while l1
    first_num << l1.val
    l1 = l1.next
  end

  second_num = []
  while l2
    second_num << l2.val
    l2 = l2.next
  end

  sum = (first_num.join.to_i + second_num.join.to_i).to_s

  result = ::ListNode.new(0)
  curr = result
  sum.each_char do |c|
    curr.next = ::ListNode.new(c.to_i)
    curr = curr.next
  end

  result.next
end
