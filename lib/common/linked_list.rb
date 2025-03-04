# frozen_string_literal: true

# LinkedList implementation for this project
class ListNode
  attr_accessor :val, :next

  # @param {Integer} val
  # @param {ListNode} nxt
  def initialize(val = 0, nxt = nil)
    @val = val
    @next = nxt
  end

  # @param {ListNode} values
  def self.from_array(values)
    return if values.empty?

    list = ::ListNode.new(values.first)
    head = list
    values.drop(1).each do |value|
      list.next = ::ListNode.new(value)
      list = list.next
    end

    head
  end

  # @param {ListNode} first
  # @param {ListNode} second
  # @return {Boolean}
  def self.are_equals(first, second)
    return true if !first && !second

    return false if !first || !second

    first.val == second.val && are_equals(first.next, second.next)
  end
end
