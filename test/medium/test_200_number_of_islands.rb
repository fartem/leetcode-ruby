# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/200_number_of_islands'
require 'minitest/autorun'

class NumberOfIslandsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      num_islands(
        [
          %w[1 1 1 1 0],
          %w[1 1 0 1 0],
          %w[1 1 0 0 0],
          %w[0 0 0 0 0]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      num_islands(
        [
          %w[1 1 0 0 0],
          %w[1 1 0 0 0],
          %w[0 0 1 0 0],
          %w[0 0 0 1 1]
        ]
      )
    )
  end
end
