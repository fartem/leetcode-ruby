# frozen_string_literal: true

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
