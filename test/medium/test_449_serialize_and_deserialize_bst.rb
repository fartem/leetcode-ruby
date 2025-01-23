# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/449_serialize_and_deserialize_bst'
require 'minitest/autorun'

class SerializeAndDeserializeBSTTest < ::Minitest::Test
  def test_default_one
    node = ::TreeNode.build_tree(
      [2, 1, 3]
    )
    result = serialize(node)

    assert(
      ::TreeNode.are_equals(
        deserialize(result),
        ::TreeNode.build_tree(
          [2, 1, 3]
        )
      )
    )
  end

  def test_default_two
    node = ::TreeNode.build_tree([])
    result = serialize(node)

    assert(
      ::TreeNode.are_equals(
        deserialize(result),
        ::TreeNode.build_tree([])
      )
    )
  end
end
