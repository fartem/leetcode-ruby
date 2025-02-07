# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1338_reduce_array_size_to_the_half'
require 'minitest/autorun'

class ReduceArraySizeToTheHalfTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      min_set_size(
        [3, 3, 3, 3, 5, 5, 5, 2, 2, 7]
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      min_set_size(
        [7, 7, 7, 7, 7, 7]
      )
    )
  end
end
