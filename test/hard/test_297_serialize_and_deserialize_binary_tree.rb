# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/hard/297_serialize_and_deserialize_binary_tree'
require 'minitest/autorun'

class SerializeAndDeserializeBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [1, 2, 3, nil, nil, 4, 5]
        ),
        deserialize_binary_tree(
          serialize_binary_tree(
            ::TreeNode.build_tree(
              [1, 2, 3, nil, nil, 4, 5]
            )
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        nil,
        deserialize_binary_tree(
          serialize_binary_tree(
            nil
          )
        )
      )
    )
  end
end
