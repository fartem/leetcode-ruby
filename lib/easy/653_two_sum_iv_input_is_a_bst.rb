# frozen_string_literal: true

# https://leetcode.com/problems/two-sum-iv-input-is-a-bst/
# @param {TreeNode} root
# @param {Integer} k
# @return {Boolean}
def find_target(root, k)
  contains(root, ::Set.new, k)
end

# @param {TreeNode} node
# @param {Set[Integer]} nums
# @param {Integer} k
def contains(node, nums, k)
  return false if node.nil?

  diff = k - node.val

  return true if nums.include?(diff)

  nums << node.val

  contains(node.left, nums, k) || contains(node.right, nums, k)
end
