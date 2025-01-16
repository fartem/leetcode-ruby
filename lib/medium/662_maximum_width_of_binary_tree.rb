# frozen_string_literal: true

# https://leetcode.com/problems/maximum-width-of-binary-tree/
# @param {TreeNode} root
# @return {Integer}
def width_of_binary_tree(root)
  result = 1
  nodes = [::TreeNodePair.new(root, 0)]
  until nodes.empty?
    size = nodes.size
    min = +1.0 / 0.0
    max = 0
    (0...size).each do |_i|
      pair = nodes.shift
      min = [min, pair.value].min
      max = [max, pair.value].max

      left = pair.node.left
      right = pair.node.right

      nodes << ::TreeNodePair.new(left, pair.value * 2 + 1) if left
      nodes << ::TreeNodePair.new(right, pair.value * 2 + 2) if right
    end

    result = [result, max - min + 1].max
  end

  result
end

private

# TreeNodePair
class TreeNodePair
  attr_accessor :node, :value

  # @param {TreeNode} node
  # @param {Integer} value
  def initialize(node, value)
    @node = node
    @value = value
  end
end
