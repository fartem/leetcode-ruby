# frozen_string_literal: true

# https://leetcode.com/problems/leaf-similar-trees/
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
  f = []
  fill_leafs(root1, f)

  s = []
  fill_leafs(root2, s)

  return false if f.length != s.length

  (0...f.length).step(1) do |i|
    f_n = f[i]
    s_n = s[i]

    return false if f_n != s_n
  end

  true
end

# @param {TreeNode} root
# @param {TreeNode[]} leafs
def fill_leafs(root, leafs)
  return if root.nil?

  fill_leafs(root.left, leafs)
  leafs << root.val if is_leaf(root)
  fill_leafs(root.right, leafs)
end

# @param {TreeNode} node
# @return {Boolean}
def is_leaf(node)
  node.left.nil? && node.right.nil?
end
