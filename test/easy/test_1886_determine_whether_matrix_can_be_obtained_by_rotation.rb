# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1886_determine_whether_matrix_can_be_obtained_by_rotation'
require 'minitest/autorun'

class DetermineWhetherMatrixCanBeObtainedByRotationTest < ::Minitest::Test
  def test_default_one
    assert(
      find_rotation(
        [
          [0, 1],
          [1, 0]
        ],
        [
          [1, 0],
          [0, 1]
        ]
      )
    )
  end

  def test_default_two
    assert(
      !find_rotation(
        [
          [0, 1],
          [1, 1]
        ],
        [
          [1, 0],
          [0, 1]
        ]
      )
    )
  end

  def test_default_three
    assert(
      find_rotation(
        [
          [0, 0, 0],
          [0, 1, 0],
          [1, 1, 1]
        ],
        [
          [1, 1, 1],
          [0, 1, 0],
          [0, 0, 0]
        ]
      )
    )
  end
end
