# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/119_pascals_triangle_ii'
require 'minitest/autorun'

class PascalsTriangleIITest < ::Minitest::Test
  def test_default_one = assert_equal([1, 3, 3, 1], get_row(3))

  def test_default_two = assert_equal([1], get_row(0))

  def test_default_three = assert_equal([1, 1], get_row(1))
end
