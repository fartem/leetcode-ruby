# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2319_check_if_matrix_is_x_matrix'
require 'minitest/autorun'

class CheckIfMatrixIsXMatrixTest < ::Minitest::Test
  def test_default_one
    assert(
      check_x_matrix(
        [
          [2, 0, 0, 1],
          [0, 3, 1, 0],
          [0, 5, 2, 0],
          [4, 0, 0, 2]
        ]
      )
    )
  end

  def test_default_two
    assert(
      !check_x_matrix(
        [
          [5, 7, 0],
          [0, 3, 1],
          [0, 5, 0]
        ]
      )
    )
  end
end
