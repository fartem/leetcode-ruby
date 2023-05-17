# frozen_string_literal: true

# https://leetcode.com/problems/implement-queue-using-stacks/
class MyQueue
  # Default constructor.
  def initialize
    @stack = []
  end

  # @param {Integer}
  # @return {Void}
  def push(x)
    @stack.push(x)
  end

  # @return {Integer}
  def pop
    @stack.shift
  end

  # @return {Integer}
  def peek
    @stack.first
  end

  # @return {Boolean}
  def empty
    @stack.empty?
  end
end
