# frozen_string_literal: true

# https://leetcode.com/problems/reverse-nodes-in-even-length-groups/
# @param {ListNode} head
# @return {ListNode}
def reverse_even_length_groups(head)
  nodes = []
  p = head

  while p
    nodes << p
    p = p.next
  end

  counter = 1
  size = nodes.size
  index = 0

  while size.positive?
    count = [counter, size].min

    if count.even?
      upper_limit = count + index - 1
      i = index
      j = 0

      while j < count / 2
        a = nodes[i]
        b = nodes[upper_limit - j]
        temp = a.val
        a.val = b.val
        b.val = temp

        i += 1
        j += 1
      end
    end

    size -= counter
    index += counter
    counter += 1
  end

  head
end
