# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/node_with_neighbors'
require_relative '../../lib/medium/133_clone_graph'
require 'minitest/autorun'

class CloneGraphTest < ::Minitest::Test
  def test_default
    g1 = ::NodeWithNeighbors.new(1)
    g2 = ::NodeWithNeighbors.new(2)
    g3 = ::NodeWithNeighbors.new(3)
    g4 = ::NodeWithNeighbors.new(4)
    g1.neighbors << g2
    g1.neighbors << g4
    g2.neighbors << g1
    g2.neighbors << g3
    g3.neighbors << g2
    g3.neighbors << g4
    g4.neighbors << g1
    g4.neighbors << g4

    assert(
      ::NodeWithNeighbors.are_equals(
        g1,
        clone_graph(g1)
      )
    )

    g5 = ::NodeWithNeighbors.new(1)
    assert(
      ::NodeWithNeighbors.are_equals(
        g5,
        clone_graph(g5)
      )
    )

    assert(
      ::NodeWithNeighbors.are_equals(
        nil,
        clone_graph(nil)
      )
    )
  end
end
