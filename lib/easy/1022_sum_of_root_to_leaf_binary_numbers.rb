# frozen_string_literal: true

# https://leetcode.com/problems/sum-of-root-to-leaf-binary-numbers/
# @param {TreeNode} root
# @return {Integer}
def sum_root_to_leaf(root)
  result = []
  fill_values(root, result, 0)

  result.sum
end

# @param {TreeNode} root
# @param {Integer[]} values
# @param {Integer} curr
def fill_values(root, values, curr)
  return if root.nil?

  curr = (curr << 1) | root.val

  if root.left.nil? && root.right.nil?
    values << curr
  else
    fill_values(root.left, values, curr)
    fill_values(root.right, values, curr)
  end
end
