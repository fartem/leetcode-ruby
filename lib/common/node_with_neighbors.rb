# frozen_string_literal: true

# NodeWithNeighbors implementation for this project
class NodeWithNeighbors
  attr_accessor :val, :neighbors

  # @param {Integer} val
  # @param {Array} neighbors
  def initialize(val, neighbors = nil)
    @val = val
    @neighbors = neighbors.nil? ? [] : neighbors
  end

  # @param {NodeWithNeighbors} n1
  # @param {NodeWithNeighbors} n2
  # @return {Boolean}
  def self.are_equals(n1, n2)
    if n1 && n2
      return false unless n1.val == n2.val

      return false unless n1.neighbors.size == n2.neighbors.size

      n1.neighbors.each_with_index do |neighbor, index|
        return false unless neighbor.val == n2.neighbors[index].val
      end

      return true
    end

    !n1 && !n2
  end
end
