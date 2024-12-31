# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/817_linked_list_components'
require 'minitest/autorun'

class LinkedListComponentsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      num_components(
        ::ListNode.from_array(
          [0, 1, 2, 3]
        ),
        [0, 1, 3]
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      num_components(
        ::ListNode.from_array(
          [0, 1, 2, 3, 4]
        ),
        [0, 3, 1, 4]
      )
    )
  end
end
