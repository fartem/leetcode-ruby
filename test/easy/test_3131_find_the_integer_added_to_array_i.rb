# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/3131_find_the_integer_added_to_array_i'
require 'minitest/autorun'

class FindTheIntegerAddedToArrayITest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      added_integer(
        [2, 6, 4],
        [9, 7, 5]
      )
    )
  end

  def test_default_two
    assert_equal(
      -5,
      added_integer(
        [10],
        [5]
      )
    )
  end

  def test_default_three
    assert_equal(
      0,
      added_integer(
        [1, 1, 1, 1],
        [1, 1, 1, 1]
      )
    )
  end
end
