# frozen_string_literal: true

require_relative '../common/linked_list'

# https://leetcode.com/problems/remove-zero-sum-consecutive-nodes-from-linked-list/
# @param {ListNode} head
# @return {ListNode}
def remove_zero_sum_sublists(head)
  return unless head

  dummy = ::ListNode.new(0)
  dummy.next = head
  prefix_sum = 0
  prefix_sums = {}
  current = dummy

  while current
    prefix_sum += current.val

    if prefix_sums[prefix_sum]
      prev = prefix_sums[prefix_sum]
      temp_sum = prefix_sum
      temp = prev.next

      while temp != current
        temp_sum += temp.val
        prefix_sums.delete(temp_sum)
        temp = temp.next
      end

      prev.next = current.next
    else
      prefix_sums[prefix_sum] = current
    end

    current = current.next
  end

  dummy.next
end
