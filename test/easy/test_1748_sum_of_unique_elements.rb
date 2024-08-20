# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1748_sum_of_unique_elements'
require 'minitest/autorun'

class SumOfUniqueElementsTest < ::Minitest::Test
  def test_default_one = assert_equal(4, sum_of_unique([1, 2, 3, 2]))

  def test_default_two = assert_equal(0, sum_of_unique([1, 1, 1, 1, 1]))

  def test_default_three = assert_equal(15, sum_of_unique([1, 2, 3, 4, 5]))
end
