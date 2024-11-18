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
        ::TreeNode.new(
          10,
          ::TreeNode.new(
            5,
            ::TreeNode.new(
              3,
              ::TreeNode.new(3),
              ::TreeNode.new(-2)
            ),
            ::TreeNode.new(
              2,
              nil,
              ::TreeNode.new(1)
            )
          ),
          ::TreeNode.new(
            -3,
            ::TreeNode.new(11),
            nil
          )
        ),
        8
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      path_sum437(
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
end
