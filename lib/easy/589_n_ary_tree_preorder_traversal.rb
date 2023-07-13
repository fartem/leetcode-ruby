# frozen_string_literal: true

# https://leetcode.com/problems/n-ary-tree-preorder-traversal/
# @param {NAryTree} root
# @return {Integer[]}
def preorder(root)
  result = []
  apply(root, result)

  result
end

# @param {NAryTree}
# @param {Integer[]}
def apply(node, list)
  return if node.nil?

  list << node.val
  node.children&.each { |child| apply(child, list) }
end
