# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/39_combination_sum'
require 'minitest/autorun'

class CombinationSumTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [2, 2, 3],
        [7]
      ],
      combination_sum(
        [2, 3, 6, 7],
        7
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        [2, 2, 2, 2],
        [2, 3, 3],
        [3, 5]
      ],
      combination_sum(
        [2, 3, 5],
        8
      )
    )
  end

  def test_default_three
    assert_equal(
      [],
      combination_sum(
        [2],
        1
      )
    )
  end
end
