# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/823_binary_trees_with_factors'
require 'minitest/autorun'

class BinaryTreesWithFactorsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      num_factored_binary_trees(
        [2, 4]
      )
    )
  end

  def test_default_two
    assert_equal(
      7,
      num_factored_binary_trees(
        [2, 4, 5, 10]
      )
    )
  end
end
