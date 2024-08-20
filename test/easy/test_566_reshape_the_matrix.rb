# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/566_reshape_the_matrix'
require 'minitest/autorun'

class ReshapeTheMatrixTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [[1, 2, 3, 4]],
      matrix_reshape(
        [[1, 2], [3, 4]],
        1,
        4
      )
    )
  end

  def test_default_two
    assert_equal(
      [[1, 2], [3, 4]],
      matrix_reshape(
        [[1, 2], [3, 4]],
        2,
        4
      )
    )
  end
end
