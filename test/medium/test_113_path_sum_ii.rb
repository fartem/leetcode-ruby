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
        ::TreeNode.new(
          5,
          ::TreeNode.new(
            4,
            ::TreeNode.new(
              11,
              ::TreeNode.new(7),
              ::TreeNode.new(2)
            ),
            nil
          ),
          ::TreeNode.new(
            8,
            ::TreeNode.new(13),
            ::TreeNode.new(
              4,
              ::TreeNode.new(5),
              ::TreeNode.new(1)
            )
          )
        ),
        22
      )
    )
  end

  def test_default_two
    assert_equal(
      [],
      path_sum(
        ::TreeNode.new(
          1,
          ::TreeNode.new(2),
          ::TreeNode.new(3)
        ),
        5
      )
    )
  end

  def test_default_three
    assert_empty(
      [],
      path_sum(
        ::TreeNode.new(
          1,
          ::TreeNode.new(2),
          nil
        ),
        0
      )
    )
  end
end
