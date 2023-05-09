# frozen_string_literal: true

# https://leetcode.com/problems/remove-duplicates-from-sorted-list/
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  p = head
  while p&.next
    if p.val == p.next.val
      p.next = p.next.next
    else
      p = p.next
    end
  end
  head
end
