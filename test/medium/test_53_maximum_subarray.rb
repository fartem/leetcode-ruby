# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/53_maximum_subarray'
require 'minitest/autorun'

class MaximumSubarrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      6,
      max_sub_array(
        [-2, 1, -3, 4, -1, 2, 1, -5, 4]
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      max_sub_array(
        [1]
      )
    )
  end

  def test_default_three
    assert_equal(
      23,
      max_sub_array(
        [5, 4, -1, 7, 8]
      )
    )
  end
end
