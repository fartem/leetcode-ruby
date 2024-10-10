# frozen_string_literal: true

# https://leetcode.com/problems/peeking-iterator/
class PeekingIterator
  # @param {Iterator} iter
  def initialize(iter)
    @iterator = iter
    @next = @iterator.next
  end

  # Returns true if the iteration has more elements.
  # @return {Integer}
  def has_next = !@next.nil?

  # Returns the next element in the iteration.
  # @return {Integer}
  def next
    tmp = @next
    @next = @iterator.has_next ? @iterator.next : nil

    tmp
  end

  # Returns the next element in the iteration without advancing the iterator.
  # @return {Integer}
  def peek = @next
end

# Iterator
class Iterator
  # @param {Array} v
  def initialize(v)
    @arr = v
    @curr = 0
  end

  # @return {Boolean}
  def has_next = @arr.size > @curr

  # @return {Integer}
  def next
    tmp = @arr[@curr]
    @curr += 1

    tmp
  end
end
