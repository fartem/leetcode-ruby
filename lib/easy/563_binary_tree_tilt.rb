# frozen_string_literal: true

# https://leetcode.com/problems/binary-tree-tilt/
# @param {TreeNode} root
# @return {Integer}
def find_tilt(root)
  @tilt = 0
  calc_tilt(root)

  @tilt
end

# @param {TreeNode} node
# @param {Integer} tilt
# @return {Integer}
def calc_tilt(node)
  return 0 if node.nil?

  left = calc_tilt(node.left)
  right = calc_tilt(node.right)
  @tilt += (left - right).abs

  left + right + node.val
end
