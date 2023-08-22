# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/867_transpose_matrix'
require 'minitest/autorun'

class TransposeMatrixTest < ::Minitest::Test
  def test_default
    assert_equal(
      [[1, 4, 7], [2, 5, 8], [3, 6, 9]],
      transpose([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    )
    assert_equal(
      [[1, 4], [2, 5], [3, 6]],
      transpose([[1, 2, 3], [4, 5, 6]])
    )
  end
end
