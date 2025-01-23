# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/113_path_sum_ii'
require 'minitest/autorun'

class PathSumIITest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [5, 4, 11, 2],
        [5, 8, 4, 5]
      ],
      path_sum(
        ::TreeNode.build_tree(
          [5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, 5, 1]
        ),
        22
      )
    )
  end

  def test_default_two
    assert_equal(
      [],
      path_sum(
        ::TreeNode.build_tree(
          [1, 2, 3]
        ),
        5
      )
    )
  end

  def test_default_three
    assert_empty(
      [],
      path_sum(
        ::TreeNode.build_tree(
          [1, 2]
        ),
        0
      )
    )
  end
end
