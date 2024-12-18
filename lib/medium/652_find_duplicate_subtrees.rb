# frozen_string_literal: true

# https://leetcode.com/problems/find-duplicate-subtrees/
# @param {TreeNode} root
# @return {TreeNode[]}
def find_duplicate_subtrees(root)
  @duplicates = ::Set.new
  @nodes = {}

  traverse_for_find_duplicate_subtrees(root)

  @duplicates.to_a
end

private

# @param {TreeNode} node
# @return {String}
def traverse_for_find_duplicate_subtrees(node)
  return '' unless node

  left = traverse_for_find_duplicate_subtrees(node.left)
  right = traverse_for_find_duplicate_subtrees(node.right)
  curr = "#{left} #{right} #{node.val}"

  if @nodes.include?(curr)
    @duplicates << @nodes[curr]
  else
    @nodes[curr] = node
  end

  curr
end
