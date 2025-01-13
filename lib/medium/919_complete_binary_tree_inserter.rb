# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/complete-binary-tree-inserter/
class CBTInserter
  # @param {TreeNode} root
  def initialize(root)
    @root = root
    @deq = []

    que = [root]
    until que.empty?
      node = que.shift

      @deq << node if !node.left || !node.right

      que << node.left if node.left
      que << node.right if node.right
    end
  end

  # @param {Integer} val
  # @return {Integer}
  def insert(val)
    node = @deq.first
    @deq << ::TreeNode.new(val)

    if node.left
      node.right = @deq.last
      @deq.shift
    else
      node.left = @deq.last
    end

    node.val
  end

  # @return {TreeNode}
  def get_root = @root
end
