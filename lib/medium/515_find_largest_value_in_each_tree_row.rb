# frozen_string_literal: true

# https://leetcode.com/problems/find-largest-value-in-each-tree-row/
# @param {TreeNode} root
# @return {Integer[]}
def largest_values(root)
  return [] unless root

  result = []
  nodes = [root]
  until nodes.empty?
    size = nodes.size
    max = -::Float::INFINITY
    (0...size).each do |_|
      node = nodes.shift

      max = node.val if node.val > max

      nodes << node.left if node.left
      nodes << node.right if node.right
    end

    result << max
  end

  result
end
