# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/construct-binary-tree-from-preorder-and-postorder-traversal/
# @param {Integer[]} preorder
# @param {Integer[]} postorder
# @return {TreeNode}
def construct_from_pre_post(preorder, postorder)
  build_full_bt(preorder, postorder, 0, preorder.size - 1, 0, postorder.size - 1)
end

private

# @param {Integer[]} pre
# @param {Integer[]} post
# @param {Integer} pre_start
# @param {Integer} pre_end
# @param {Integer} post_start
# @param {Integer} post_end
# @return {TreeNode}
def build_full_bt(pre, post, pre_start, pre_end, post_start, post_end)
  return if pre_start > pre_end

  return ::TreeNode.new(pre[pre_start]) if pre_start == pre_end

  node = ::TreeNode.new(pre[pre_start])

  root_index = find_root_for_construct_from_pre_post(post, post_start, post_end, pre[pre_start + 1])

  node.left = build_full_bt(pre, post, pre_start + 1, pre_start + root_index - post_start + 1, post_start, root_index)
  node.right = build_full_bt(pre, post, pre_end - post_end + root_index + 2, pre_end, root_index + 1, post_end - 1)

  node
end

# @param {Integer[]} post
# @param {Integer} s
# @param {Integer} e
# @param {Integer} root
# @return {Integer}
def find_root_for_construct_from_pre_post(post, s, e, root)
  (s..e).each { |i| return i if post[i] == root }
end
