# frozen_string_literal: true

# https://leetcode.com/problems/root-equals-sum-of-children/
# @param {TreeNode} root
# @return {Boolean}
def check_tree(root)
  root.val == root.left.val + root.right.val
end
