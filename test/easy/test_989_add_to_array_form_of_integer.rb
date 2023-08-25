# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/989_add_to_array_form_of_integer'
require 'minitest/autorun'

class AddToArrayFormOfIntegerTest < ::Minitest::Test
  def test_default
    assert_equal([1, 2, 3, 4], add_to_array_form([1, 2, 0, 0], 34))
    assert_equal([4, 5, 5], add_to_array_form([2, 7, 4], 181))
    assert_equal([1, 0, 2, 1], add_to_array_form([2, 1, 5], 806))
  end

  def test_additional
    assert_equal([2, 3], add_to_array_form([0], 23))
    assert_equal([8, 1, 5], add_to_array_form([6], 809))
    assert_equal([1, 0, 0, 0, 0], add_to_array_form([1, 2, 3, 4], 8766))
    assert_equal([1, 0, 0, 0], add_to_array_form([7], 993))
    assert_equal([6, 6, 2], add_to_array_form([6, 5, 6], 6))
    assert_equal(
      [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      add_to_array_form([9, 9, 9, 9, 9, 9, 9, 9, 9, 9], 1)
    )
  end
end
