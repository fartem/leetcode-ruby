# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1985_find_the_kth_largest_integer_in_the_array'
require 'minitest/autorun'

class FindTheKthLargestIntegerInTheArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      '3',
      kth_largest_number(
        %w[3 6 7 10],
        4
      )
    )
  end

  def test_default_two
    assert_equal(
      '2',
      kth_largest_number(
        %w[2 21 12 1],
        3
      )
    )
  end

  def test_default_three
    assert_equal(
      '0',
      kth_largest_number(
        %w[0 0],
        2
      )
    )
  end
end
