# frozen_string_literal: true

# https://leetcode.com/problems/path-sum-iii/
# @param {TreeNode} root
# @param {Integer} target_sum
# @return {Integer}
def path_sum437(root, target_sum)
  return 0 unless root

  traverse437(root, target_sum) + path_sum437(root.left, target_sum) + path_sum437(root.right, target_sum)
end

private

# @param {TreeNode} node
# @param {Integer} target_sum
# @return {Integer}
def traverse437(node, target_sum)
  return 0 unless node

  result = target_sum == node.val ? 1 : 0
  result += traverse437(node.left, target_sum - node.val)
  result += traverse437(node.right, target_sum - node.val)

  result
end
