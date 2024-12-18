# frozen_string_literal: true

# https://leetcode.com/problems/most-frequent-subtree-sum/
# @param {TreeNode} root
# @return {Integer[]}
def find_frequent_tree_sum(root)
  @freq = 0

  values = {}
  fill_values_from_sub_tree(root, values)

  most_freq = []
  values.entries.each { |key, value| most_freq << key if value == @freq }

  most_freq
end

private

# @param {TreeNode} node
# @param {Set<Integer, Integer>} values
# @return {Integer}
def fill_values_from_sub_tree(node, values)
  return 0 unless node

  left = fill_values_from_sub_tree(node.left, values)
  right = fill_values_from_sub_tree(node.right, values)
  sum = node.val + left + right

  values[sum] = values.fetch(sum, 0) + 1
  @freq = [@freq, values[sum]].max

  sum
end
