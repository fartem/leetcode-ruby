# frozen_string_literal: true

# https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/
# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor236(root, p, q)
  return root if [nil, p, q].index(root)

  left = lowest_common_ancestor236(root.left, p, q)
  right = lowest_common_ancestor236(root.right, p, q)

  left && right ? root : left || right
end
