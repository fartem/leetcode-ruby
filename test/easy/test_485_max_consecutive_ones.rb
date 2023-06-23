# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/485_max_consecutive_ones'
require 'minitest/autorun'

class MaxConsecutiveOnesTest < ::Minitest::Test
  def test_default
    assert_equal(
      3,
      find_max_consecutive_ones(
        [1, 1, 0, 1, 1, 1]
      )
    )
    assert_equal(
      2,
      find_max_consecutive_ones(
        [1, 0, 1, 1, 0, 1]
      )
    )
  end
end
