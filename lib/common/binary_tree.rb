# frozen_string_literal: true

# Binary Tree implementation for this project
class TreeNode
  attr_accessor :val, :left, :right

  # @param {Integer} val
  # @param {TreeNode} left
  # @param {TreeNode} right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

  # @param {TreeNode} curr
  # @param {TreeNode} other
  # @return {Boolean}
  def self.are_equals(curr, other)
    return true if !curr && !other

    return false if !curr || !other

    curr_eq = curr.val == other.val
    left_eq = are_equals(curr.left, other.left)
    right_eq = are_equals(curr.right, other.right)

    curr_eq && left_eq && right_eq
  end

  # @param {TreeNode} other
  # @return {Boolean}
  def ==(other)
    return false unless other

    val == other.val
  end

  # @param {TreeNode} other
  # @return {Boolean}
  def eql?(other) = self == other
end
