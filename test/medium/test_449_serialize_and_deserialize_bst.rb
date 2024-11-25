# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/449_serialize_and_deserialize_bst'
require 'minitest/autorun'

class SerializeAndDeserializeBSTTest < ::Minitest::Test
  def test_default_one
    node = ::TreeNode.new(
      2,
      ::TreeNode.new(1),
      ::TreeNode.new(3)
    )
    result = serialize(node)

    assert(
      ::TreeNode.are_equals(
        deserialize(result),
        ::TreeNode.new(
          2,
          ::TreeNode.new(1),
          ::TreeNode.new(3)
        )
      )
    )
  end

  def test_default_two
    node = ::TreeNode.new
    result = serialize(node)

    assert(
      ::TreeNode.are_equals(
        deserialize(result),
        ::TreeNode.new
      )
    )
  end
end
