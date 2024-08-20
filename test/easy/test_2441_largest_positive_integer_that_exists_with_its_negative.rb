# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2441_largest_positive_integer_that_exists_with_its_negative'
require 'minitest/autorun'

class LargestPositiveIntegerThatExistsWithItsNegativeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      find_max_k(
        [-1, 2, -3, 3]
      )
    )
  end

  def test_default_two
    assert_equal(
      7,
      find_max_k(
        [-1, 10, 6, 7, -7, 1]
      )
    )
  end

  def test_default_three
    assert_equal(
      -1,
      find_max_k(
        [-10, 8, 6, 7, -2, -3]
      )
    )
  end
end
