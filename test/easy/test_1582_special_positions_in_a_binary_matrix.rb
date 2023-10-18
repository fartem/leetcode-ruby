# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1582_special_positions_in_a_binary_matrix'
require 'minitest/autorun'

class SpecialPositionsInABinaryMatrixTest < ::Minitest::Test
  def test_default
    assert_equal(1, num_special([[1, 0, 0], [0, 0, 1], [1, 0, 0]]))
    assert_equal(3, num_special([[1, 0, 0], [0, 1, 0], [0, 0, 1]]))
  end
end
