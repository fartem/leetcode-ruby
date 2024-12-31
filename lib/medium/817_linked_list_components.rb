# frozen_string_literal: true

# https://leetcode.com/problems/linked-list-components/
# @param {ListNode} head
# @param {Integer[]} nums
# @return {Integer}
def num_components(head, nums)
  values = nums.to_set
  result = 0
  is_connected = false

  while head
    if values.include?(head.val)
      unless is_connected
        is_connected = true
        result += 1
      end
    else
      is_connected = false
    end

    head = head.next
  end

  result
end
