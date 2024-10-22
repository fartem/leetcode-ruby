# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/328_odd_even_linked_list'
require 'minitest/autorun'

class MaximumProductOfWordLenghtsTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 3, 5, 2, 4]
        ),
        odd_even_list(
          ::ListNode.from_array(
            [1, 2, 3, 4, 5]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [2, 3, 6, 7, 1, 5, 4]
        ),
        odd_even_list(
          ::ListNode.from_array(
            [2, 1, 3, 5, 6, 4, 7]
          )
        )
      )
    )
  end
end
