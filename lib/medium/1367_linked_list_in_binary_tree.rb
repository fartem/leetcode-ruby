# frozen_string_literal: true

# https://leetcode.com/problems/linked-list-in-binary-tree/
# @param {ListNode} head
# @param {TreeNode} root
# @return {Boolean}
def is_sub_path(head, root)
  nodes = [root]

  until nodes.empty?
    node = nodes.shift

    return true if node.val == head.val && dfs_for_sub_path(head, node)

    nodes << node.left if node.left
    nodes << node.right if node.right
  end

  false
end

private

# @param {ListNode} head
# @param {TreeNode} root
# @return {Boolean}
def dfs_for_sub_path(head, root)
  return true unless head

  return false if root.nil? || root.val != head.val

  left = dfs_for_sub_path(head.next, root.left)
  right = dfs_for_sub_path(head.next, root.right)

  left || right
end
