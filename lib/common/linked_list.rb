# frozen_string_literal: true

# LinkedList implementation for this project
class ListNode
  # @param val {Integer}
  # @param nxt {ListNode}
  def initialize(val = 0, nxt = nil)
    @val = val
    @next = nxt
  end

  # @param values {Array}
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

  # @param first {ListNode}
  # @param second {ListNode}
  def self.are_equals(first, second)
    return true if first.nil? && second.nil?
    return false if first.nil? || second.nil?

    first.val == second.val && are_equals(first.next, second.next)
  end

  attr_accessor :val, :next
end
