# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/448_find_all_numbers_disappeared_in_an_array'
require 'minitest/autorun'

class FindAllNumbersDisappearedInAnArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [5, 6],
      find_disappeared_numbers(
        [4, 3, 2, 7, 8, 2, 3, 1]
      )
    )
  end

  def test_default_two
    assert_equal(
      [2],
      find_disappeared_numbers([1, 1])
    )
  end
end
