# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/add-one-row-to-tree/
# @param {TreeNode} root
# @param {Integer} val
# @param {Integer} depth
# @return {TreeNode}
def add_one_row(root, val, depth)
  return ::TreeNode.new(val, root, nil) if depth == 1

  level = 1
  nodes = [root]
  until nodes.empty?
    size = nodes.size

    if (level + 1) == depth
      until size.zero?
        node = nodes.delete_at(0)
        left = node.left
        right = node.right
        node.left = ::TreeNode.new(val, left, nil)
        node.right = ::TreeNode.new(val, nil, right)

        size -= 1
      end
    else
      until size.zero?
        node = nodes.delete_at(0)
        nodes << node.left if node.left
        nodes << node.right if node.right

        size -= 1
      end
    end

    level += 1
  end

  root
end
