# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1305_all_elements_in_two_binary_search_trees'
require 'minitest/autorun'

class AllElementsInTwoBinarySearchTreesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [0, 1, 1, 2, 3, 4],
      get_all_elements(
        ::TreeNode.build_tree(
          [2, 1, 4]
        ),
        ::TreeNode.build_tree(
          [1, 0, 3]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 1, 8, 8],
      get_all_elements(
        ::TreeNode.build_tree(
          [1, nil, 8]
        ),
        ::TreeNode.build_tree(
          [8, 1]
        )
      )
    )
  end

  def test_additional_one
    assert_equal(
      [0, 1, 2, 5, 7],
      get_all_elements(
        ::TreeNode.build_tree(
          []
        ),
        ::TreeNode.build_tree(
          [5, 1, 7, 0, 2]
        )
      )
    )
  end
end
