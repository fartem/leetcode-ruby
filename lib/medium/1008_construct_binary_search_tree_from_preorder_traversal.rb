# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/construct-binary-search-tree-from-preorder-traversal/
# @param {Integer[]} preorder
# @return {TreeNode}
def bst_from_preorder(preorder)
  construct_bst_from_preorder(preorder, 0, preorder.size - 1)
end

private

# @param {Integer[]} preorder
# @param {Integer} start
# @param {Integer} nd
# @return {TreeNode}
def construct_bst_from_preorder(preorder, start, nd)
  return if start > nd

  node = ::TreeNode.new(preorder[start])

  index = start
  while index <= nd
    break if preorder[index] > node.val

    index += 1
  end

  node.left = construct_bst_from_preorder(preorder, start + 1, index - 1)
  node.right = construct_bst_from_preorder(preorder, index, nd)

  node
end
