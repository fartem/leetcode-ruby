# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/118_pascals_triangle'
require 'minitest/autorun'

class PascalsTriangleTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [1],
        [1, 1],
        [1, 2, 1],
        [1, 3, 3, 1],
        [1, 4, 6, 4, 1]
      ],
      generate(5)
    )
  end

  def test_default_two = assert_equal([[1]], generate(1))
end
