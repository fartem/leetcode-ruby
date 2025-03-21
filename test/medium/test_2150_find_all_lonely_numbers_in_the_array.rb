# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2150_find_all_lonely_numbers_in_the_array'
require 'minitest/autorun'

class FindAllLonelyNumbersInTheArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [10, 8],
      find_lonely(
        [10, 6, 5, 8]
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 5],
      find_lonely(
        [1, 3, 5, 3]
      )
    )
  end
end
