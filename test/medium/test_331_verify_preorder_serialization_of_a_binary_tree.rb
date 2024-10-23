# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/331_verify_preorder_serialization_of_a_binary_tree'
require 'minitest/autorun'

class VerifyPreorderSerializationOfABinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      is_valid_serialization(
        '9,3,4,#,#,1,#,#,2,#,6,#,#'
      )
    )
  end

  def test_default_two
    assert(
      !is_valid_serialization(
        '1,#'
      )
    )
  end

  def test_default_three
    assert(
      !is_valid_serialization(
        '9,#,#,1'
      )
    )
  end
end
