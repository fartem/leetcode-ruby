# frozen_string_literal: true

# https://leetcode.com/problems/binary-tree-paths/
# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root)
  result = []
  fill_paths(root, '', result)
  result
end

# @param {TreeNode} node
# @param {String} path
# @param {String[]} paths
# @return {Void}
def fill_paths(node, path, paths)
  return if node.nil?

  curr = path.length.positive? ? "#{path}->#{node.val}" : node.val.to_s

  if node.left.nil? && node.right.nil?
    paths << curr
  else
    fill_paths(node.left, curr, paths)
    fill_paths(node.right, curr, paths)
  end
end
