# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1608_special_array_with_x_elements_greater_than_or_equal_x'
require 'minitest/autorun'

class SpecialArrayWithXElementsGreaterThanOrEqualXTest < ::Minitest::Test
  def test_default
    assert_equal(2, special_array([3, 5]))
    assert_equal(-1, special_array([0, 0]))
    assert_equal(3, special_array([0, 4, 3, 0, 4]))
  end
end
