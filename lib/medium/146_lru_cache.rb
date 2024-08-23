# frozen_string_literal: true

# https://leetcode.com/problems/lru-cache/
class LRUCache
  # @param {Integer} capacity
  def initialize(capacity)
    @capacity = capacity
    @head = ::Node.new
    @tail = ::Node.new
    @cache = {}

    @head.next = @tail
    @tail.prev = @head
  end

  # @param {Integer} key
  # @return {Integer}
  def get(key)
    node = @cache[key]

    return -1 unless node

    remove(node)
    add(node)

    node.val
  end

  # @param {Integer} key
  # @param {Integer} value
  # @return {Void}
  def put(key, value)
    node = @cache[key]

    if node
      remove(node)
      node.val = value
    else
      if @cache.size == @capacity
        @cache.delete(@tail.prev.key)
        remove(@tail.prev)
      end

      node = ::Node.new
      node.key = key
      node.val = value
      @cache[key] = node
    end

    add(node)
  end

  private

  # @param {Node} node
  # @return {Void}
  def add(node)
    nxt = @head.next
    @head.next = node
    nxt.prev = node
    node.next = nxt
    node.prev = @head
  end

  # @param {Node} node
  # @return {Void}
  def remove(node)
    nxt = node.next
    prev = node.prev
    nxt.prev = prev
    prev.next = nxt
  end
end

private

# Cache node
class Node
  attr_accessor :key, :val, :prev, :next

  # Constructor with default parameters
  def initialize
    @key = 0
    @val = 0
    @prev = nil
    @next = nil
  end
end
