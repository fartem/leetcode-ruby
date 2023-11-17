# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1710_maximum_units_on_a_truck'
require 'minitest/autorun'

class MaximumUnitsOnATruckTest < ::Minitest::Test
  def test_default
    assert_equal(8, maximum_units([[1, 3], [2, 2], [3, 1]], 4))
    assert_equal(91, maximum_units([[5, 10], [2, 5], [4, 7], [3, 9]], 10))
  end
end
