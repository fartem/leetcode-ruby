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

    return false unless curr.val == other.val

    left_eq = are_equals(curr.left, other.left)
    right_eq = are_equals(curr.right, other.right)

    left_eq && right_eq
  end

  # @param {Integer[]} nodes
  # @return {TreeNode}
  def self.build_tree(nodes)
    return if nodes.empty?

    root = ::TreeNode.new(nodes[0])
    queue = [root]
    i = 1

    while i < nodes.length
      current = queue.shift

      next unless current

      if i < nodes.length && !nodes[i].nil?
        current.left = ::TreeNode.new(nodes[i])

        queue << current.left
      end

      i += 1

      if i < nodes.length && !nodes[i].nil?
        current.right = ::TreeNode.new(nodes[i])

        queue << current.right
      end

      i += 1
    end

    root
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
