# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/easy/1290_convert_binary_number_in_a_linked_list_to_integer'
require 'minitest/autorun'

class ConvertBinaryNumberInALinkedListToIntegerTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      5,
      get_decimal_value(
        ::ListNode.from_array(
          [1, 0, 1]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      get_decimal_value(
        ::ListNode.from_array(
          [0]
        )
      )
    )
  end
end
