# frozen_string_literal: true

require_relative '../common/node_with_neighbors'

# https://leetcode.com/problems/clone-graph/
# @param {NodeWithNeighbors} node
# @return {NodeWithNeighbors}
def clone_graph(node)
  clone_graph_rec(node, {})
end

private

# @param {NodeWithNeighbors} node
# @param {Hash} values
# @param {NodeWithNeighbors} values
def clone_graph_rec(node, values)
  return unless node

  return values[node] if values.key?(node)

  root = ::NodeWithNeighbors.new(node.val, [])
  values[node] = root
  node.neighbors.each do |neighbor|
    root.neighbors << clone_graph_rec(neighbor, values)
  end

  root
end
