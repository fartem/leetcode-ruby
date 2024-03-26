# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2215_find_the_difference_of_two_arrays'
require 'minitest/autorun'

class FindTheDifferenceOfTwoArraysTest < ::Minitest::Test
  def test_default
    assert_equal([[1, 3], [4, 6]], find_difference([1, 2, 3], [2, 4, 6]))
    assert_equal([[3], []], find_difference([1, 2, 3, 3], [1, 1, 2, 2]))
  end
end
