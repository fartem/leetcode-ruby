# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/703_kth_largest_element_in_a_stream'
require 'minitest/autorun'

class KthLargestElementInAStreamTest < ::Minitest::Test
  def test_default_one
    kth_largest = ::KthLargest.new(3, [4, 5, 8, 2])

    assert_equal(4, kth_largest.add(3))
    assert_equal(5, kth_largest.add(5))
    assert_equal(5, kth_largest.add(10))
    assert_equal(8, kth_largest.add(9))
    assert_equal(8, kth_largest.add(4))
  end
end
