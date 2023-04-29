# frozen_string_literal: true

require_relative '../common/linked_list'

# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  return list1 if list2.nil?
  return list2 if list1.nil?

  min = list1.val > list2.val ? list2 : list1
  max = list1.val > list2.val ? list1 : list2
  result = ::ListNode.new(min.val)
  min = min.next
  head = result
  while !min.nil? && !max.nil?
    if min.val > max.val
      result.next = ::ListNode.new(max.val)
      max = max.next
    else
      result.next = ::ListNode.new(min.val)
      min = min.next
    end
    result = result.next
  end
  result.next = min unless min.nil?
  result.next = max unless max.nil?
  head
end
