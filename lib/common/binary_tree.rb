# frozen_string_literal: true

# Binary Tree implementation for this project
class TreeNode
  attr_accessor :val, :left, :right

  # @param val {Integer}
  # @param left {TreeNode}
  # @param right {TreeNode}
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

  # @param other {TreeNode}
  def ==(other)
    are_equals(self, other)
  end

  private

  # @param curr {TreeNode}
  # @param other {TreeNode}
  def are_equals(curr, other)
    return true if curr.nil? && other.nil?
    return false if curr.nil? || other.nil?

    curr_eq = curr.val == other.val
    left_eq = are_equals(curr.left, other.left)
    right_eq = are_equals(curr.right, other.right)
    curr_eq && left_eq && right_eq
  end
end
