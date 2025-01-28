# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/delete-nodes-and-return-forest/
# @param {TreeNode} root
# @param {Integer[]} to_delete
# @return {TreeNode[]}
def del_nodes(root, to_delete)
  delete_values = to_delete.to_set
  result = []

  node = collect_nodes(root, result, delete_values)

  result << root if node

  result
end

private

# @param {TreeNode} node
# @param {TreeNode[]} nodes
# @param {Integer{}} delete_values
# @return {TreeNode}
def collect_nodes(node, nodes, delete_values)
  return if node.nil?

  node.left = collect_nodes(node.left, nodes, delete_values)
  node.right = collect_nodes(node.right, nodes, delete_values)

  if delete_values.include?(node.val)
    nodes << node.left if node.left
    nodes << node.right if node.right

    return
  end

  node
end
