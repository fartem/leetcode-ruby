# frozen_string_literal: true

# https://leetcode.com/problems/find-bottom-left-tree-value/
# @param {TreeNode} root
# @return {Integer}
def find_bottom_left_value(root)
  @path = -1
  @value = 0

  apply_to_find_bottom_left_value(root, 0)

  @value
end

private

# @param {TreeNode} node
# @param {Integer} curr
# @return {Void}
def apply_to_find_bottom_left_value(node, curr)
  return unless node

  if @path < curr
    @path = curr
    @value = node.val
  end

  apply_to_find_bottom_left_value(node.left, curr + 1)
  apply_to_find_bottom_left_value(node.right, curr + 1)
end
