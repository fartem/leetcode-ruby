# frozen_string_literal: true

# https://leetcode.com/problems/min-stack/
class MinStack
  # MinStack default constructor
  def initialize
    @stack = []
  end

  # @param {Integer} val
  # @return {Void}
  def push(val) = @stack << val

  # @return {Void}
  def pop = @stack.pop

  # @return {Integer}
  def top = @stack.last

  # @return {Integer}
  def get_min = @stack.min
end
