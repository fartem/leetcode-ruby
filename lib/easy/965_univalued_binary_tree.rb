# frozen_string_literal: true

# https://leetcode.com/problems/univalued-binary-tree/
# @param {TreeNode} root
# @return {Boolean}
def is_unival_tree(root)
  is_uni_valued(root, root.val)
end

# @param {TreeNode} root
# @param {Integer} num
# @return {Boolean}
def is_uni_valued(root, num)
  return true if root.nil?

  root.val == num && is_uni_valued(root.left, num) && is_uni_valued(root.right, num)
end
