# frozen_string_literal: true

# @param {ListNode} head
# @return {Boolean}
def has_cycle(head)
  return false if head.nil?

  slow = head
  fast = head.next
  while slow != fast
    return false if fast.nil? || fast.next.nil?

    slow = slow.next
    fast = fast.next.next
  end
  true
end
