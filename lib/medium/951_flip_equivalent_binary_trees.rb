# frozen_string_literal: true

# https://leetcode.com/problems/flip-equivalent-binary-trees/
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def flip_equiv(root1, root2)
  return true if root1 == root2

  return false if !root1 || !root2 || root1.val != root2.val

  original = flip_equiv(root1.right, root2.right) && flip_equiv(root1.left, root2.left)
  switched = flip_equiv(root1.right, root2.left) && flip_equiv(root1.left, root2.right)

  original || switched
end
