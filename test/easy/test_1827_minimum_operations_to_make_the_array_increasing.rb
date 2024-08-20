# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1827_minimum_operations_to_make_the_array_increasing'
require 'minitest/autorun'

class MinimumOperationsToMakeTheArrayIncreasingTest < ::Minitest::Test
  def test_default_one = assert_equal(3, _1827_min_operations([1, 1, 1]))

  def test_default_two = assert_equal(14, _1827_min_operations([1, 5, 2, 4, 1]))

  def test_default_three = assert_equal(0, _1827_min_operations([8]))
end
