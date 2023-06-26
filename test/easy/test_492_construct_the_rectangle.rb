# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/492_construct_the_rectangle'
require 'minitest/autorun'

class ConstructTheRectangleTest < ::Minitest::Test
  def test_default
    assert_equal(
      [2, 2],
      construct_rectangle(4)
    )
    assert_equal(
      [37, 1],
      construct_rectangle(37)
    )
    assert_equal(
      [427, 286],
      construct_rectangle(122_122)
    )
  end
end
