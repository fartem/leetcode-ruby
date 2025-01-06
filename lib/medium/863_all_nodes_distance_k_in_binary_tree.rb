# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/all-nodes-distance-k-in-binary-tree/
# @param {TreeNode} root
# @param {TreeNode} target
# @param {Integer} k
# @return {Integer[]}
def distance_k(root, target, k)
  @parent = {}
  patch!(root, nil)

  seen = [target].to_set
  curr = [target].to_set

  loop do
    return curr.map(&:val) if k.zero?

    curr = curr.flat_map { |node| [@parent[node], node.left, node.right] }
               .tap(&:compact!)
               .to_set
               .difference(seen)

    seen.merge(curr)

    k -= 1
  end
end

# @param {TreeNode} node
# @param {TreeNode} parent
# @return {Void}
def patch!(node, parent)
  return unless node

  @parent[node] = parent

  patch!(node.left, node)
  patch!(node.right, node)
end
