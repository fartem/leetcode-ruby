# frozen_string_literal: true

# https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/
# @param {ListNode} head
# @return {Integer}
def get_decimal_value(head)
  result = head.val
  until head.next.nil?
    result = result * 2 + head.next.val
    head = head.next
  end

  result
end
