# frozen_string_literal: true

# https://leetcode.com/problems/deepest-leaves-sum/
# @param {TreeNode} root
# @return {Integer}
def deepest_leaves_sum(root)
  @max_deep = max_deep(root, 0)

  traverse_for_deepest_leaves_sum(root, 0)
end

private

# @param {TreeNode} node
# @param {Integer} curr
# @return {Integer}
def max_deep(node, curr)
  return curr unless node

  left = max_deep(node.left, curr + 1)
  right = max_deep(node.right, curr + 1)

  [left, right].max
end

# @param {TreeNode} node
# @param {Integer} curr
# @return {Integer}
def traverse_for_deepest_leaves_sum(node, curr)
  return 0 unless node

  return node.val if curr + 1 == @max_deep

  left = traverse_for_deepest_leaves_sum(node.left, curr + 1)
  right = traverse_for_deepest_leaves_sum(node.right, curr + 1)

  left + right
end
