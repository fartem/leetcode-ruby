# frozen_string_literal: true

require_relative '../common/binary_tree'

$pre_index = 0

# https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/
# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
  $pre_index = 0
  in_index = {}
  (0...inorder.size).each do |i|
    in_index[inorder[i]] = i
  end

  array_to_tree(preorder, 0, preorder.size - 1, in_index)
end

private

# @param {Integer[]} pre
# @param {Integer} l
# @param {Integer} r
# @param {Hash} in_index
def array_to_tree(pre, l, r, in_index)
  return if l > r

  val = pre[$pre_index]
  $pre_index += 1

  root = ::TreeNode.new(val)
  root.left = array_to_tree(pre, l, in_index[val] - 1, in_index)
  root.right = array_to_tree(pre, in_index[val] + 1, r, in_index)

  root
end
