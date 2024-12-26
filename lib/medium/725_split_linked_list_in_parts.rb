# frozen_string_literal: true

require_relative '../common/linked_list'

# https://leetcode.com/problems/split-linked-list-in-parts/
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode[]}
def split_list_to_parts(head, k)
  p = head
  count = 0

  until p.nil?
    p = p.next
    count += 1
  end

  part = count / k
  remainder = count % k
  result = []
  p = head

  (0...k).each do |i|
    unit = ::ListNode.new(0)
    curr = unit

    (0...(part + (i < remainder ? 1 : 0))).each do |_|
      next unless p

      curr = curr.next = ::ListNode.new(p.val)
      p = p.next
    end

    result << unit.next
  end

  result
end
