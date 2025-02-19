# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1457_pseudo_palindromic_paths_in_a_binary_tree'
require 'minitest/autorun'

class PseudoPalindromicPathsInABinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      pseudo_palindromic_paths(
        ::TreeNode.build_tree(
          [2, 3, 1, 3, 1, nil, 1]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      pseudo_palindromic_paths(
        ::TreeNode.build_tree(
          [2, 1, 1, 1, 3, nil, nil, nil, nil, nil, 1]
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      pseudo_palindromic_paths(
        ::TreeNode.build_tree(
          [9]
        )
      )
    )
  end
end
