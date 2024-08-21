# frozen_string_literal: true

# https://leetcode.com/problems/linked-list-cycle-ii/
# @param {ListNode} head
# @return {ListNode}
def detect_cycle(head)
  tort = head
  hare = head
  is_cycle = false
  while tort && hare && hare.next
    tort = tort.next
    hare = hare.next.next

    next unless hare == tort

    is_cycle = true

    break
  end

  return unless is_cycle

  tort = head
  until tort == hare
    tort = tort.next
    hare = hare.next
  end

  tort
end
