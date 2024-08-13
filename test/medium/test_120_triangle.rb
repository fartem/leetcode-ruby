# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/120_triangle'
require 'minitest/autorun'

class TriangleTest < ::Minitest::Test
  def test_default
    assert_equal(11, minimum_total([[2], [3, 4], [6, 5, 7], [4, 1, 8, 3]]))
    assert_equal(-10, minimum_total([[-10]]))
  end
end
