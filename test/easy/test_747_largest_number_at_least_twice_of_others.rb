# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/747_largest_number_at_least_twice_of_others'
require 'minitest/autorun'

class LargestNumberAtLeastTwiceOfOthersTest < ::Minitest::Test
  def test_default_one = assert_equal(1, dominant_index([3, 6, 1, 0]))

  def test_default_two = assert_equal(-1, dominant_index([1, 2, 3, 4]))
end
