# frozen_string_literal: true

# https://leetcode.com/problems/sum-root-to-leaf-numbers/
# @param {TreeNode} root
# @return {Integer}
def sum_numbers(root) = sum_for_root_to_leaf_number(root, 0)

private

# @param {TreeNode} node
# @param {Integer} curr
# @return {Integer}
def sum_for_root_to_leaf_number(node, curr)
  return 0 unless node

  curr = curr * 10 + node.val

  return curr if node.left.nil? && node.right.nil?

  sum_for_root_to_leaf_number(node.left, curr) + sum_for_root_to_leaf_number(node.right, curr)
end
