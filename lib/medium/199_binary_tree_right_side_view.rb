# frozen_string_literal: true

# https://leetcode.com/problems/binary-tree-right-side-view/
# @param {TreeNode} root
# @return {Integer[]}
def right_side_view(root)
  return [] unless root

  result = []
  deque = [root]
  until deque.empty?
    size = deque.size
    until size.zero?
      node = deque.shift
      deque << node.left if node.left
      deque << node.right if node.right

      result << node.val if size == 1

      size -= 1
    end
  end

  result
end
