# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/766_toeplitz_matrix'
require 'minitest/autorun'

class ToeplitzMatrixTest < ::Minitest::Test
  def test_default_one
    assert(
      is_toeplitz_matrix(
        [
          [1, 2, 3, 4],
          [5, 1, 2, 3],
          [9, 5, 1, 2]
        ]
      )
    )
  end

  def test_default_two
    assert(
      !is_toeplitz_matrix(
        [
          [1, 2],
          [2, 2]
        ]
      )
    )
  end
end
