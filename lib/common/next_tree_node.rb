# frozen_string_literal: true

# NextTreeNode implementation for this project
class NextTreeNode
  attr_accessor :val, :left, :right, :next

  # @param {Integer} val
  # @param {NextTreeNode} left
  # @param {NextTreeNode} right
  # @param {NextTreeNode} nxt
  def initialize(val, left = nil, right = nil, nxt = nil)
    @val = val
    @left = left
    @right = right
    @next = nxt
  end

  # @param {NextTreeNode} n1
  # @param {NextTreeNode} n2
  # @return {Boolean}
  def self.are_equals(n1, n2)
    if n1 && n2
      return false unless n1.val == n2.val && n1.next == n2.next

      return are_equals(n1.left, n2.left) && are_equals(n1.right, n2.right)
    end

    !n1 && !n2
  end

  # @param {NextTreeNode} other
  # @return {Boolean}
  def ==(other)
    return false unless other.is_a?(::NextTreeNode)

    val == other.val &&
      left == other.left &&
      right == other.right &&
      self.next == other.next
  end

  # @return {Integer}
  def hash = [val, left, right, nxt].hash
end
