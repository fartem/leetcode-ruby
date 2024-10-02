# frozen_string_literal: true

# https://leetcode.com/problems/kth-smallest-element-in-a-bst/
# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
  nums = []
  apply230(root, nums)

  nums[k - 1]
end

private

# @param {TreeNode} root
# @param {Array} nums
# @return {Void}
def apply230(node, nums)
  return unless node

  apply230(node.left, nums)
  nums << node.val
  apply230(node.right, nums)
end
