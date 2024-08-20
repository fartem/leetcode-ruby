# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2022_convert_1d_array_into_2d_array'
require 'minitest/autorun'

class Convert1DArrayInto2DArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [1, 2],
        [3, 4]
      ],
      construct2_d_array(
        [1, 2, 3, 4],
        2,
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        [1, 2, 3]
      ],
      construct2_d_array(
        [1, 2, 3],
        1,
        3
      )
    )
  end

  def test_default_three
    assert_equal(
      [],
      construct2_d_array(
        [1, 2],
        1,
        1
      )
    )
  end
end
