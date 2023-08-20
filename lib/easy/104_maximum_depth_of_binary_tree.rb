# frozen_string_literal: true

# https://leetcode.com/problems/maximum-depth-of-binary-tree/
# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 if root.nil?

  left = max_depth(root.left)
  right = max_depth(root.right)

  left > right ? left + 1 : right + 1
end
