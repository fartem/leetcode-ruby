# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2404_most_frequent_even_element'
require 'minitest/autorun'

class MostFrequentEvenElementTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      most_frequent_even(
        [0, 1, 2, 2, 4, 4, 1]
      )
    )
  end

  def test_default_two
    assert_equal(
      4,
      most_frequent_even(
        [4, 4, 4, 9, 2, 4]
      )
    )
  end

  def test_default_three
    assert_equal(
      -1,
      most_frequent_even(
        [29, 47, 21, 41, 13, 37, 25, 7]
      )
    )
  end
end
