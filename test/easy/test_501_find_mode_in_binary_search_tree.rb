# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/501_find_mode_in_binary_search_tree'
require 'minitest/autorun'

class FindModeInBinarySearchTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [2],
      find_mode(
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(
            2,
            ::TreeNode.new(2),
            nil
          )
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      [0],
      find_mode(
        ::TreeNode.new(0)
      )
    )
  end
end
