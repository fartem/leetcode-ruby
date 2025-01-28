# frozen_string_literal: true

# https://leetcode.com/problems/maximum-level-sum-of-a-binary-tree/
# @param {TreeNode} root
# @return {Integer}
def max_level_sum(root)
  nodes = [root]
  max = -::Float::INFINITY
  max_level = 1
  level = 1

  until nodes.empty?
    size = nodes.size
    sum = 0

    size.times do
      node = nodes.shift
      sum += node.val

      nodes << node.left if node.left
      nodes << node.right if node.right
    end

    if sum > max
      max = sum
      max_level = level
    end

    level += 1
  end

  max_level
end
