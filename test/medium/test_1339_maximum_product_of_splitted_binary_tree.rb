# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1339_maximum_product_of_splitted_binary_tree'
require 'minitest/autorun'

class MaximumProductOfSplittedBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      110,
      max_product_for_splitted_binary_tree(
        ::TreeNode.build_tree(
          [1, 2, 3, 4, 5, 6]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      90,
      max_product_for_splitted_binary_tree(
        ::TreeNode.build_tree(
          [1, nil, 2, 3, 4, nil, nil, 5, 6]
        )
      )
    )
  end
end
