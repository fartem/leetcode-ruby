# frozen_string_literal: true

# https://leetcode.com/problems/path-sum-ii/
# @param {TreeNode} root
# @param {Integer} target_sum
# @return {Integer[][]}
def path_sum(root, target_sum)
  return [] unless root

  result = []
  path = [root.val]
  dfs113(root, result, path, target_sum - root.val)

  result
end

private

# @param {TreeNode} node
# @param {Array} paths
# @param {Array} path
# @param {Integer} sum
# @return {Void}
def dfs113(node, paths, path, sum)
  paths << path.clone if sum.zero? && node.left.nil? && node.right.nil?

  unless node.left.nil?
    path << node.left.val
    dfs113(node.left, paths, path, sum - node.left.val)
    path.pop
  end

  return if node.right.nil?

  path << node.right.val
  dfs113(node.right, paths, path, sum - node.right.val)
  path.pop
end
