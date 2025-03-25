# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/create-binary-tree-from-descriptions/
# @param {Integer[][]} descriptions
# @return {TreeNode}
def create_binary_tree(descriptions)
  nodes = {}
  children = ::Set.new

  descriptions.each do |parent_val, child_val, is_left|
    parent_node = nodes[parent_val] ||= ::TreeNode.new(parent_val)
    child_node = nodes[child_val] ||= ::TreeNode.new(child_val)

    if is_left == 1
      parent_node.left = child_node
    else
      parent_node.right = child_node
    end

    children.add(child_val)
  end

  root_val = nodes.keys.find { |k| !children.include?(k) }

  nodes[root_val]
end
