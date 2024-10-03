# frozen_string_literal: true

# https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/
# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  node = root

  while node
    if p.val > node.val && q.val > node.val
      node = node.right
    elsif p.val < node.val && q.val < node.val
      node = node.left
    else
      return node
    end
  end
end
