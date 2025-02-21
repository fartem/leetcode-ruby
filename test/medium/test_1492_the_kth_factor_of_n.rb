# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1492_the_kth_factor_of_n'
require 'minitest/autorun'

class TheKthFactorOfNTest < ::Minitest::Test
  def test_default_one = assert_equal(3, kth_factor(12, 3))

  def test_default_two = assert_equal(7, kth_factor(7, 2))

  def test_default_three = assert_equal(-1, kth_factor(4, 4))
end
