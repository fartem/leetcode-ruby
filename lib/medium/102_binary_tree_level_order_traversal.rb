# frozen_string_literal: true

# https://leetcode.com/problems/binary-tree-level-order-traversal/
# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
  return [] unless root

  result = []
  deq = [root]
  until deq.empty?
    level = []
    size = deq.size
    (0...size).reverse_each do |_i|
      node = deq.shift
      level << node.val
      deq << node.left if node.left
      deq << node.right if node.right
    end

    result << level
  end

  result
end
