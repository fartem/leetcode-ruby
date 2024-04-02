# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2239_find_closest_number_to_zero'
require_relative '../../lib/common/binary_tree'
require 'minitest/autorun'

class FindClosestNumberToZeroTest < ::Minitest::Test
  def test_default
    assert_equal(1, find_closest_number([-4, -2, 1, 4, 8]))
    assert_equal(1, find_closest_number([2, -1, 1]))
  end
end
