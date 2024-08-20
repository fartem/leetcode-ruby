# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1913_maximum_product_difference_between_two_pairs'
require 'minitest/autorun'

class MaximumProductDifferenceBetweenTwoPairsTest < ::Minitest::Test
  def test_default_one = assert_equal(34, max_product_difference([5, 6, 2, 7, 4]))

  def test_default_two = assert_equal(64, max_product_difference([4, 2, 5, 9, 7, 4, 8]))
end
