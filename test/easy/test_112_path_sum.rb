# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/112_path_sum'
require 'minitest/autorun'

class PathSumTest < ::Minitest::Test
  def test_default_one
    assert(
      has_path_sum(
        ::TreeNode.build_tree(
          [5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, nil, 1]
        ),
        22
      )
    )
  end

  def test_default_two
    assert(
      !has_path_sum(
        ::TreeNode.build_tree(
          [1, 2, 3]
        ),
        5
      )
    )
  end

  def test_default_three = assert(!has_path_sum(nil, 0))
end
