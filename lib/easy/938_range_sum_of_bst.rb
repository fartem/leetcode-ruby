# frozen_string_literal: true

# https://leetcode.com/problems/range-sum-of-bst/
# @param {TreeNode} root
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def range_sum_bst(root, low, high)
  return 0 if root.nil?

  return root.val + range_sum_bst(root.left, low, high) + range_sum_bst(root.right, low, high) if root.val >= low && root.val <= high

  return range_sum_bst(root.right, low, high) if root.val < low

  range_sum_bst(root.left, low, high)
end
