# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2016_maximum_difference_between_increasing_elements'
require 'minitest/autorun'

class MaximumDifferenceBetweenIncreasingElementsTest < ::Minitest::Test
  def test_default
    assert_equal(4, maximum_difference([7, 1, 5, 4]))
    assert_equal(-1, maximum_difference([9, 4, 3, 2]))
    assert_equal(9, maximum_difference([1, 5, 2, 10]))
  end
end
