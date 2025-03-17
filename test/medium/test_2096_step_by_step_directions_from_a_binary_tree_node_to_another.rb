# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/2096_step_by_step_directions_from_a_binary_tree_node_to_another'
require 'minitest/autorun'

class StepByStepDirectionsFromABinaryTreeNodeToAnotherTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'UURL',
      get_directions(
        ::TreeNode.build_tree(
          [5, 1, 2, 3, nil, 6, 4]
        ),
        3,
        6
      )
    )
  end

  def test_default_two
    assert_equal(
      'L',
      get_directions(
        ::TreeNode.build_tree(
          [2, 1]
        ),
        2,
        1
      )
    )
  end
end
