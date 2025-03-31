# frozen_string_literal: true

# https://leetcode.com/problems/count-nodes-equal-to-average-of-subtree/
# @param {TreeNode} root
# @return {Integer}
def average_of_subtree(root)
  @result = 0

  dfs_for_average_of_subtree(root)

  @result
end

private

# @param {TreeNode} node
# @return {Integer[]}
def dfs_for_average_of_subtree(node)
  return ::Array.new(2, 0) unless node

  left = dfs_for_average_of_subtree(node.left)
  right = dfs_for_average_of_subtree(node.right)

  curr_sum = left[0] + right[0] + node.val
  curr_count = left[1] + right[1] + 1

  @result += 1 if curr_sum / curr_count == node.val

  [curr_sum, curr_count]
end
