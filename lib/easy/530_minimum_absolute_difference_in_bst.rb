# frozen_string_literal: true

# https://leetcode.com/problems/minimum-absolute-difference-in-bst/
# @param {TreeNode} root
# @return {Integer}
def get_minimum_difference(root)
  nums = []
  fill_nums(root, nums)
  result = 1_000_000_000
  (1...nums.length).each do |i|
    diff = nums[i] - nums[i - 1]
    result = diff if diff < result
  end

  result
end

# @param {TreeNode} node
# @param {Integer[]} nums
def fill_nums(node, nums)
  return if node.nil?

  fill_nums(node.left, nums)
  nums << node.val
  fill_nums(node.right, nums)
end
