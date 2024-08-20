# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1365_how_many_numbers_are_smaller_than_the_current_number'
require 'minitest/autorun'

class HowManyNumbersAreSmallerThanTheCurrentNumberTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [4, 0, 1, 1, 3],
      smaller_numbers_than_current(
        [8, 1, 2, 2, 3]
      )
    )
  end

  def test_default_two
    assert_equal(
      [2, 1, 0, 3],
      smaller_numbers_than_current(
        [6, 5, 4, 8]
      )
    )
  end

  def test_default_three
    assert_equal(
      [0, 0, 0, 0],
      smaller_numbers_than_current(
        [7, 7, 7, 7]
      )
    )
  end
end
