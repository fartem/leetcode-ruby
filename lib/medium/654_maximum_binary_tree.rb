# frozen_string_literal: true

# https://leetcode.com/problems/maximum-binary-tree/
# @param {Integer[]} nums
# @return {TreeNode}
def construct_maximum_binary_tree(nums)
  expand_construct_maximum_binary_tree(nums, 0, nums.size)
end

private

# @param {Integer[]} nums
# @param {Integer} left
# @param {Integer} right
# @return {Boolean}
def expand_construct_maximum_binary_tree(nums, left, right)
  return if left == right

  max = max_for_maximum_binary_tree(nums, left, right)
  root = ::TreeNode.new(nums[max])
  root.left = expand_construct_maximum_binary_tree(nums, left, max)
  root.right = expand_construct_maximum_binary_tree(nums, max + 1, right)

  root
end

# @param {Integer[]} nums
# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def max_for_maximum_binary_tree(nums, left, right)
  max = left
  (left...right).each { |i| max = i if nums[max] < nums[i] }

  max
end
