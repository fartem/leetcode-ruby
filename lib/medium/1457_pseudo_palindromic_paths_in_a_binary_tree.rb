# frozen_string_literal: true

# https://leetcode.com/problems/pseudo-palindromic-paths-in-a-binary-tree/
# @param {TreeNode} root
# @return {Integer}
def pseudo_palindromic_paths(root)
  find_for_pseudo_palindromic_path(root, 0)
end

private

# @param {TreeNode} root
# @param {Integer} freq
# @return {Integer}
def find_for_pseudo_palindromic_path(node, freq)
  return 0 unless node

  freq = freq ^ (1 << node.val)

  return (freq & (freq - 1)).zero? ? 1 : 0 if !node.left && !node.right

  find_for_pseudo_palindromic_path(node.left, freq) + find_for_pseudo_palindromic_path(node.right, freq)
end
