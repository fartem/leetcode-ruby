# frozen_string_literal: true

# https://leetcode.com/problems/design-linked-list/
class MyLinkedList
  # Init
  def initialize
    @head = nil
    @length = 0
  end

  # @param {Integer} index
  # @return {Integer}
  def get(index)
    return -1 unless is_valid_index(index)

    node_at_index(index).val
  end

  # @param {Integer} val
  # @return {Void}
  def add_at_head(val)
    new_head = ::MyLinkedList::InnerListNode.new(val)
    if @head
      prev = @head
      @head = new_head
      new_head.next = prev
    else
      @head = new_head
    end

    @length += 1
  end

  # @param {Integer} val
  # @return {Void}
  def add_at_tail(val)
    if @head
      tail = node_at_index(@length - 1)
      tail&.next = ::MyLinkedList::InnerListNode.new(val)
    else
      @head = ::MyLinkedList::InnerListNode.new(val)
    end

    @length += 1
  end

  # @param {Integer} index
  # @param {Integer} val
  # @return {Void}
  def add_at_index(index, val)
    if is_valid_index(index)
      if index.zero?
        add_at_head(val)
      else
        prev = node_at_index(index - 1)
        nxt = node_at_index(index)
        new_node = ::MyLinkedList::InnerListNode.new(val)
        prev.next = new_node
        new_node.next = nxt
      end

      @length += 1
    elsif index == @length
      add_at_tail(val)
    end
  end

  # @param {Integer} index
  # @return {Void}
  def delete_at_index(index)
    return unless is_valid_index(index)

    if index.zero?
      if @head
        @head = @head.next
        @length -= 1
      end
    else
      prev = node_at_index(index - 1)
      prev.next = prev.next ? prev.next.next : nil
      @length -= 1
    end

    puts(@length)
  end

  # InnerListNode
  class InnerListNode
    attr_accessor :val, :next

    # @param {Integer} val
    def initialize(val)
      @val = val
      @next = nil
    end
  end

  private

  # @param {Integer} index
  # @return {Boolean}
  def is_valid_index(index) = index >= 0 && index < @length

  # @param {Integer} index
  # @return {ListNode}
  def node_at_index(index)
    return @head if index.zero?

    target = @head
    position = 0
    until position == index
      target = target.next
      position += 1
    end

    target
  end
end
