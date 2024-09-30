# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/215_kth_largest_element_in_an_array'
require 'minitest/autorun'

class KthLargestElementInAnArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      5,
      find_kth_largest(
        [3, 2, 1, 5, 6, 4],
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      4,
      find_kth_largest(
        [3, 2, 3, 1, 2, 4, 5, 5, 6],
        4
      )
    )
  end
end
