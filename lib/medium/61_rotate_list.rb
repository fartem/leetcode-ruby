# frozen_string_literal: true

require_relative '../common/linked_list'

# https://leetcode.com/problems/rotate-list/
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
  size = 0
  p = head

  until p.nil?
    p = p.next
    size += 1
  end

  return head if size < 2 || size == k

  places = k > size ? k % size : k

  return head if places.zero?

  div = head
  (0...(size - places - 1)).each { |_| div = div&.next }

  old_head = head
  head = div&.next
  div&.next = nil
  last = head

  last = last&.next until last&.next.nil?
  last&.next = old_head

  head
end
