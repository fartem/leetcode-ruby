# frozen_string_literal: false

# https://leetcode.com/problems/binary-tree-cameras/
# @param {TreeNode} root
# @return {Integer}
def min_camera_cover(root)
  @result = 0
  dfs_for_min_camera_cover(::Set.new([nil]), root, nil)

  @result
end

private

# @param {Set} cov
# @param {TreeNode} node
# @param {TreeNode} par
# @return {Void}
def dfs_for_min_camera_cover(cov, node, par)
  return unless node

  dfs_for_min_camera_cover(cov, node.left, node)
  dfs_for_min_camera_cover(cov, node.right, node)

  return unless !par && !cov.include?(node) || !cov.include?(node.left) || !cov.include?(node.right)

  @result += 1

  cov << node
  cov << par
  cov << node.left
  cov << node.right
end
