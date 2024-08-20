# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1470_shuffle_the_array'
require 'minitest/autorun'

class ShuffleTheArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [2, 3, 5, 4, 1, 7],
      shuffle(
        [2, 5, 1, 3, 4, 7],
        3
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 4, 2, 3, 3, 2, 4, 1],
      shuffle(
        [1, 2, 3, 4, 4, 3, 2, 1],
        4
      )
    )
  end

  def test_default_three
    assert_equal(
      [1, 2, 1, 2],
      shuffle(
        [1, 1, 2, 2],
        2
      )
    )
  end
end
