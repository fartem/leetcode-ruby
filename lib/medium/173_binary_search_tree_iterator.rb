# frozen_string_literal: true

# https://leetcode.com/problems/binary-search-tree-iterator/
class BSTIterator
  # @param {TreeNode} root
  def initialize(root)
    @values = []
    @pointer = 0

    traverse173(root) if root
  end

  # @return {Integer}
  def next
    value = @values[@pointer]
    @pointer += 1

    value
  end

  # @return {Boolean}
  def has_next = @values.size > @pointer

  private

  # @param {TreeNode} node
  # @return {Void}
  def traverse173(node)
    return unless node

    traverse173(node.left)
    @values << node.val
    traverse173(node.right)
  end
end
