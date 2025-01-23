# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/437_path_sum_iii'
require 'minitest/autorun'

class PathSumIIITest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      path_sum437(
        ::TreeNode.build_tree(
          [10, 5, -3, 3, 2, nil, 11, 3, -2, nil, 1]
        ),
        8
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      path_sum437(
        ::TreeNode.build_tree(
          [5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, 5, 1]
        ),
        22
      )
    )
  end
end
