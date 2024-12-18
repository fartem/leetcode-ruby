# frozen_string_literal: true

# https://leetcode.com/problems/convert-bst-to-greater-tree/
# @param {TreeNode} root
# @return {TreeNode}
def convert_bst(root)
  @sum = 0

  convert_bst_with_sum(root)
end

private

# @param {TreeNode} node
# @return {TreeNode}
def convert_bst_with_sum(node)
  return unless node

  convert_bst_with_sum(node.right)
  @sum += node.val
  node.val = @sum
  convert_bst_with_sum(node.left)

  node
end
