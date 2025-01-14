# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2657_find_the_prefix_common_array_of_two_arrays'
require 'minitest/autorun'

class FindThePrefixCommonArrayOfTwoArraysTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [0, 2, 3, 4],
      find_the_prefix_common_array(
        [1, 3, 2, 4],
        [3, 1, 2, 4]
      )
    )
  end

  def test_default_two
    assert_equal(
      [0, 1, 3],
      find_the_prefix_common_array(
        [2, 3, 1],
        [3, 1, 2]
      )
    )
  end
end
