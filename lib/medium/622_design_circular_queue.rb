# frozen_string_literal: true

require_relative '../common/linked_list'

# https://leetcode.com/problems/design-circular-queue/
class MyCircularQueue
  # @param {Integer} k
  def initialize(k)
    @size = k
    @actual_size = 0
    @head = ::ListNode.new(0)
    @tail = nil
  end

  # @param {Integer} value
  # @return {Boolean}
  def en_queue(value)
    return false if is_full

    if @tail
      @tail.next = ::ListNode.new(value)
      @tail = @tail.next
    else
      @tail = ::ListNode.new(value)
      @head.next = @tail
    end

    @tail.next = @head
    @actual_size += 1

    true
  end

  # @return {Boolean}
  def de_queue
    return false if is_empty

    if @actual_size == 1
      @head.next = nil
      @tail = nil
    else
      @head.next = @head.next.next
    end

    @actual_size -= 1

    true
  end

  # @return {Integer}
  def front
    return -1 if is_empty

    @head.next.val
  end

  # @return {Integer}
  def rear
    return -1 if is_empty

    @tail.val
  end

  # @return {Boolean}
  def is_empty = @actual_size.zero?

  # @return {Boolean}
  def is_full = @size == @actual_size
end
