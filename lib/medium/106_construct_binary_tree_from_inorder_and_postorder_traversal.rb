# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/
# @param {Integer[]} inorder
# @param {Integer[]} postorder
# @return {TreeNode}
def build_tree106(inorder, postorder)
  values = {}
  s = inorder.size
  (0...s).each do |i|
    values[inorder[i]] = i
  end

  build(inorder, 0, s - 1, postorder, 0, s - 1, values)
end

private

# @param {Integer[]} i_n
# @param {Integer} i_s
# @param {Integer} i_e
# @param {Integer[]} post
# @param {Integer} p_s
# @param {Integer} p_e
# @param {Hash} values
# @return {TreeNode}
def build(i_n, i_s, i_e, post, p_s, p_e, values)
  return if p_s > p_e || i_s > i_e

  root = ::TreeNode.new(post[p_e])
  index = values[post[p_e]]
  root.left = build(i_n, i_s, index - 1, post, p_s, p_s + index - i_s - 1, values)
  root.right = build(i_n, index + 1, i_e, post, p_s + index - i_s, p_e - 1, values)

  root
end
