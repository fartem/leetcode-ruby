# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/112_path_sum'
require 'minitest/autorun'

class PathSumTest < ::Minitest::Test
  def test_default_one
    assert(
      has_path_sum(
        ::TreeNode.new(
          5,
          ::TreeNode.new(
            4,
            ::TreeNode.new(
              11,
              ::TreeNode.new(7),
              ::TreeNode.new(2)
            )
          ),
          ::TreeNode.new(
            8,
            ::TreeNode.new(13),
            ::TreeNode.new(
              4,
              nil,
              ::TreeNode.new(1)
            )
          )
        ),
        22
      )
    )
  end

  def test_default_two
    assert(
      !has_path_sum(
        ::TreeNode.new(
          1,
          ::TreeNode.new(2),
          ::TreeNode.new(3)
        ),
        5
      )
    )
  end

  def test_default_three = assert(!has_path_sum(nil, 0))
end
