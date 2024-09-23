# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/189_rotate_array'
require 'minitest/autorun'

class RotateArrayTest < ::Minitest::Test
  def test_default_one
    arr = [1, 2, 3, 4, 5, 6, 7]
    rotate189(arr, 3)

    assert_equal(
      [5, 6, 7, 1, 2, 3, 4],
      arr
    )
  end

  def test_default_two
    arr = [-1, -100, 3, 99]
    rotate189(arr, 2)

    assert_equal(
      [3, 99, -1, -100],
      arr
    )
  end
end
