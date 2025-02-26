# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1609_even_odd_tree'
require 'minitest/autorun'

class EvenOddTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      is_even_odd_tree(
        ::TreeNode.build_tree(
          [1, 10, 4, 3, nil, 7, 9, 12, 8, 6, nil, nil, 2]
        )
      )
    )
  end

  def test_default_two
    assert(
      !is_even_odd_tree(
        ::TreeNode.build_tree(
          [5, 4, 2, 3, 3, 7]
        )
      )
    )
  end

  def test_default_three
    assert(
      !is_even_odd_tree(
        ::TreeNode.build_tree(
          [5, 9, 1, 3, 5, 7]
        )
      )
    )
  end
end
