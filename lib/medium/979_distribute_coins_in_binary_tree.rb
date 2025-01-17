# frozen_string_literal: true

# https://leetcode.com/problems/distribute-coins-in-binary-tree/
# @param {TreeNode} root
# @return {Integer}
def distribute_coins(root)
  @result = 0
  dfs_for_distribute_coins(root)

  @result
end

private

# @param {TreeNode} node
# @return {Integer}
def dfs_for_distribute_coins(node)
  return 0 unless node

  left = dfs_for_distribute_coins(node.left)
  right = dfs_for_distribute_coins(node.right)

  @result += left.abs + right.abs

  node.val + left + right - 1
end
