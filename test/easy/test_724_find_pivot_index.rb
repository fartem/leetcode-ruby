# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/724_find_pivot_index'
require 'minitest/autorun'

class FindPivotIndexTest < ::Minitest::Test
  def test_default_one = assert_equal(3, pivot_index([1, 7, 3, 6, 5, 6]))

  def test_default_two = assert_equal(-1, pivot_index([1, 2, 3]))

  def test_default_three = assert_equal(0, pivot_index([2, 1, -1]))
end
