# frozen_string_literal: true

# https://leetcode.com/problems/linked-list-random-node/
class Solution
  # @param {ListNode} head
  def initialize(head)
    @nodes = []

    until head.nil?
      @nodes << head.val

      head = head.next
    end
  end

  # @return {Integer}
  def get_random = @nodes[rand(@nodes.size)]
end
