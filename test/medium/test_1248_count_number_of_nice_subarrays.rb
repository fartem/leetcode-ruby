# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1248_count_number_of_nice_subarrays'
require 'minitest/autorun'

class CountNumberOfNiceSubarraysTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      number_of_subarrays(
        [1, 1, 2, 1, 1],
        3
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      number_of_subarrays(
        [2, 4, 6],
        1
      )
    )
  end

  def test_default_three
    assert_equal(
      16,
      number_of_subarrays(
        [2, 2, 2, 1, 2, 2, 1, 2, 2, 2],
        2
      )
    )
  end
end
