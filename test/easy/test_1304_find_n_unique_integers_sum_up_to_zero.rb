# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1304_find_n_unique_integers_sum_up_to_zero'
require 'minitest/autorun'

class FindNUniqueIntegersSumUpToZeroTest < ::Minitest::Test
  def test_default_one = assert_equal([-2, -1, 0, 1, 2], sum_zero(5))

  def test_default_two = assert_equal([-1, 0, 1], sum_zero(3))

  def test_default_three = assert_equal([0], sum_zero(1))
end
