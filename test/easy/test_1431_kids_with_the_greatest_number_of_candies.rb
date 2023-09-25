# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1431_kids_with_the_greatest_number_of_candies'
require 'minitest/autorun'

class KidsWithTheGreatestNumberOfCandiesTest < ::Minitest::Test
  def test_default
    assert_equal([true, true, true, false, true], kids_with_candies([2, 3, 5, 1, 3], 3))
    assert_equal([true, false, false, false, false], kids_with_candies([4, 2, 1, 1, 2], 1))
    assert_equal([true, false, true], kids_with_candies([12, 1, 12], 10))
  end
end
