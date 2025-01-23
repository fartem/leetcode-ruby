# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/101_symmetric_tree'
require 'minitest/autorun'

class SymmetricTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      is_symmetric(
        ::TreeNode.build_tree(
          [1, 2, 2, 3, 4, 4, 3]
        )
      )
    )
  end

  def test_default_two
    assert(
      !is_symmetric(
        ::TreeNode.build_tree(
          [1, 2, 2, nil, 3, nil, 3]
        )
      )
    )
  end
end
