# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2057_smallest_index_with_equal_value'
require 'minitest/autorun'

class SmallestIndexWithEqualValueTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      0,
      smallest_equal(
        [0, 1, 2]
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      smallest_equal(
        [4, 3, 2, 1]
      )
    )
  end

  def test_default_three
    assert_equal(
      -1,
      smallest_equal(
        [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
      )
    )
  end
end
