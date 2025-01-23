# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/958_check_completeness_of_a_binary_tree'
require 'minitest/autorun'

class CheckCompletenessOfABinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      is_complete_tree(
        ::TreeNode.build_tree(
          [1, 2, 3, 4, 5, 6]
        )
      )
    )
  end

  def test_default_two
    assert(
      !is_complete_tree(
        ::TreeNode.build_tree(
          [1, 2, 3, 4, 5, nil, 7]
        )
      )
    )
  end
end
