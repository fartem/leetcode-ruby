# frozen_string_literal: true

# https://leetcode.com/problems/subtree-of-another-tree/
# @param {TreeNode} root
# @param {TreeNode} sub_root
# @return {Boolean}
def is_subtree(root, sub_root)
  nodes = []
  find_nodes(root, sub_root, nodes)

  !nodes.select { |node| are_identical(sub_root, node) }.empty?
end

# @param {TreeNode} node
# @param {TreeNode} target
# @param {TreeNode[]} nodes
def find_nodes(node, target, nodes)
  return if node.nil?

  nodes << node if node.val == target.val

  find_nodes(node.left, target, nodes)
  find_nodes(node.right, target, nodes)
end

# @param {TreeNode} n1
# @param {TreeNode} n2
def are_identical(n1, n2)
  if !n1.nil? && !n2.nil?
    return n1.val == n2.val &&
      are_identical(n1.left, n2.left) &&
      are_identical(n1.right, n2.right)
  end

  n1.nil? && n2.nil?
end
