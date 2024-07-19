# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/59_spiral_matrix_ii'
require 'minitest/autorun'

class SpiralMatrixIITest < ::Minitest::Test
  def test_default
    assert_equal([[1, 2, 3], [8, 9, 4], [7, 6, 5]], generate_matrix(3))
    assert_equal([[1]], generate_matrix(1))
  end
end
