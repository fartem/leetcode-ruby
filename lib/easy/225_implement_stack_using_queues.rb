# frozen_string_literal: true

# https://leetcode.com/problems/implement-stack-using-queues/
class MyStack
  # Default constructor.
  def initialize
    @queue = []
  end

  # @param {Integer}
  def push(x)
    @queue << x
  end

  # @return {Integer}
  def pop
    @queue.pop
  end

  # @return {Integer}
  def top
    @queue.last
  end

  # @return {bool}
  def empty
    @queue.empty?
  end
end
