# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/239_sliding_window_maximum'
require 'minitest/autorun'

class SlidingWindowMaximumTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [3, 3, 5, 5, 6, 7],
      max_sliding_window(
        [1, 3, -1, -3, 5, 3, 6, 7],
        3
      )
    )
  end

  def test_default_two
    assert_equal(
      [1],
      max_sliding_window(
        [1],
        1
      )
    )
  end
end
