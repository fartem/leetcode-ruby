# frozen_string_literal: false

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/hard/968_binary_tree_cameras'
require 'minitest/autorun'

class BinaryTreeCamerasTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      min_camera_cover(
        ::TreeNode.new(
          0,
          ::TreeNode.new(
            0,
            ::TreeNode.new(0),
            ::TreeNode.new(0)
          ),
          nil
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      min_camera_cover(
        ::TreeNode.new(
          0,
          ::TreeNode.new(
            0,
            ::TreeNode.new(
              0,
              ::TreeNode.new(
                0,
                nil,
                ::TreeNode.new(0)
              ),
              nil
            ),
            nil
          ),
          nil
        )
      )
    )
  end
end