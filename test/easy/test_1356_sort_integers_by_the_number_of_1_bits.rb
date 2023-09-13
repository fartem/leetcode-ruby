# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1356_sort_integers_by_the_number_of_1_bits'
require 'minitest/autorun'

class SortIntegerByTheNumberOf1BitsTest < ::Minitest::Test
  def test_default
    assert_equal(
      [0, 1, 2, 4, 8, 3, 5, 6, 7],
      sort_by_bits(
        [0, 1, 2, 3, 4, 5, 6, 7, 8]
      )
    )
    assert_equal(
      [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024],
      sort_by_bits(
        [1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1]
      )
    )
  end
end
