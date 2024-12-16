# frozen_string_literal: true

require_relative '../common/linked_list'

# https://leetcode.com/problems/design-circular-deque/description/
class MyCircularDeque
  # @param {Integer} k
  def initialize(k)
    @size = k
    @actual_size = 0
    @head = ::ListNode.new(0)
    @tail = nil
  end

  # @param {Integer} value
  # @return {Boolean}
  def insert_front(value)
    return false if is_full

    new_head = ::ListNode.new(value)
    if @tail
      new_head.next = @head.next
      @head.next = new_head
    else
      @tail = new_head
      @head.next = @tail
      @tail.next = @head
    end

    @actual_size += 1

    true
  end

  # @param {Integer} value
  # @return {Boolean}
  def insert_last(value)
    return false if is_full

    new_tail = ::ListNode.new(value)
    if @tail
      @tail.next = new_tail
    else
      @head.next = new_tail
    end

    @tail = new_tail
    @actual_size += 1

    true
  end

  # @param {Boolean}
  def delete_front
    return false if @actual_size.zero?

    @head.next = @head.next.next
    @tail = nil if @actual_size == 1

    @actual_size -= 1

    true
  end

  # @param {Boolean}
  def delete_last
    return false if @actual_size.zero?

    if @actual_size == 1
      @head.next = nil
      @tail = nil
    else
      new_tail = @head.next
      new_tail = new_tail.next until new_tail.next == @tail
      new_tail.next = @head
      @tail = new_tail
    end

    @actual_size -= 1

    true
  end

  # @return {Integer}
  def get_front = @actual_size.zero? ? -1 : @head.next.val

  # @return {Integer}
  def get_rear = @actual_size.zero? ? -1 : @tail.val

  # @return {Boolean}
  def is_empty = @actual_size.zero?

  # @return {Boolean}
  def is_full = @actual_size == @size
end
