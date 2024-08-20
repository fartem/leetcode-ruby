# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2133_check_if_every_row_and_column_contains_all_numbers'
require 'minitest/autorun'

class CheckIfEveryRowAndColumnContainsAllNumbersTest < ::Minitest::Test
  def test_default_one
    assert(
      check_valid(
        [
          [1, 2, 3],
          [3, 1, 2],
          [2, 3, 1]
        ]
      )
    )
  end

  def test_default_two
    assert(
      !check_valid(
        [
          [1, 1, 1],
          [1, 2, 3],
          [1, 2, 3]
        ]
      )
    )
  end
end
