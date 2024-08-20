# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/61_rotate_list'
require 'minitest/autorun'

class RotateListTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [4, 5, 1, 2, 3]
        ),
        rotate_right(
          ::ListNode.from_array(
            [1, 2, 3, 4, 5]
          ),
          2
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [2, 0, 1]
        ),
        rotate_right(
          ::ListNode.from_array(
            [0, 1, 2]
          ),
          4
        )
      )
    )
  end
end
