# frozen_string_literal: true

# https://leetcode.com/problems/sum-root-to-leaf-numbers/
# @param {TreeNode} root
# @return {Integer}
def sum_numbers(root)
  sum129(root, 0)
end

private

# @param {TreeNode} node
# @param {Integer} curr
# @return {Integer}
def sum129(node, curr)
  return 0 unless node

  curr = curr * 10 + node.val

  return curr if node.left.nil? && node.right.nil?

  sum129(node.left, curr) + sum129(node.right, curr)
end
