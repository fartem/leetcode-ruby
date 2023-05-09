# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  to_bst(nums, 0, nums.length - 1)
end

# @param {Integer[]} nums
# @param {Integer} start
# @param {Integer} nd
def to_bst(nums, start, nd)
  return if start > nd

  middle = ((start + nd) / 2).floor
  node = ::TreeNode.new(nums[middle])
  node.left = to_bst(nums, start, middle - 1)
  node.right = to_bst(nums, middle + 1, nd)
  node
end
