# frozen_string_literal: true

# https://leetcode.com/problems/delete-node-in-a-bst/
# @param {TreeNode} root
# @param {Integer} key
# @return {TreeNode}
def delete_node450(root, key)
  return unless root

  if key > root.val
    root.right = delete_node450(root.right, key)
  elsif key < root.val
    root.left = delete_node450(root.left, key)
  elsif !root.left && !root.right
    root = nil
  elsif root.right
    root.val = successor(root)
    root.right = delete_node450(root.right, root.val)
  else
    root.val = predecessor(root)
    root.left = delete_node450(root.left, root.val)
  end

  root
end

private

# @param {TreeNode} node
# @return {Integer}
def successor(node)
  node = node.right
  node = node.left while node.left

  node.val
end

# @param {TreeNode} node
# @return {Integer}
def predecessor(node)
  node = node.left
  node = node.right while node.right

  node.val
end
