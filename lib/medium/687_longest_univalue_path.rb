# frozen_string_literal: true

# https://leetcode.com/problems/longest-univalue-path/
# @param {TreeNode} root
# @return {Integer}
def longest_univalue_path(root)
  @result = 0
  find_path_for_longest_univalue_path(root)

  @result
end

private

# @param {TreeNode} node
# @return {Integer}
def find_path_for_longest_univalue_path(node)
  return 0 unless node

  arrow_left = 0
  left = find_path_for_longest_univalue_path(node.left)
  arrow_left += left + 1 if node.left && node.left.val == node.val

  arrow_right = 0
  right = find_path_for_longest_univalue_path(node.right)
  arrow_right += right + 1 if node.right && node.right.val == node.val

  @result = [@result, arrow_left + arrow_right].max

  [arrow_left, arrow_right].max
end
