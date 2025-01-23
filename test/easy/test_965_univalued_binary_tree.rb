# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/965_univalued_binary_tree'
require 'minitest/autorun'

class UnivaluedBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      is_unival_tree(
        ::TreeNode.build_tree(
          [1, 1, 1, 1, 1, nil, 1]
        )
      )
    )
  end

  def test_default_two
    assert(
      !is_unival_tree(
        ::TreeNode.build_tree(
          [2, 2, 2, 5, 2]
        )
      )
    )
  end
end
