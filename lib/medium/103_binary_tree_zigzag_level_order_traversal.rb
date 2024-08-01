# frozen_string_literal: true

# https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/
# @param {TreeNode} root
# @return {Integer[][]}
def zigzag_level_order(root)
  return [] unless root

  result = []
  deq = [root]
  rev = true
  until deq.empty?
    level = []
    size = deq.size
    rev = !rev
    (0...size).reverse_each do |_i|
      node = deq.shift
      level << node.val
      deq << node.left if node.left
      deq << node.right if node.right
    end

    level.reverse! if rev
    result << level
  end

  result
end
