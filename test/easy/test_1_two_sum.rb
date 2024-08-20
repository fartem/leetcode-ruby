# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1_two_sum'
require 'minitest/autorun'

class TwoSumTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [0, 1],
      two_sum(
        [2, 7, 11, 15],
        9
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 2],
      two_sum(
        [3, 2, 4],
        6
      )
    )
  end

  def test_default_three
    assert_equal(
      [0, 1],
      two_sum(
        [3, 3], 6
      )
    )
  end
end
