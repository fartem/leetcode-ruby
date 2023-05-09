# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/119_pascals_triangle_ii'
require 'minitest/autorun'

class PascalsTriangleIITest < ::Minitest::Test
  def test_default
    assert_equal([1, 3, 3, 1], get_row(3))
    assert_equal([1], get_row(0))
    assert_equal([1, 1], get_row(1))
  end
end
