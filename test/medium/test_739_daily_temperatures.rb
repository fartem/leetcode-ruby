# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/739_daily_temperatures'
require 'minitest/autorun'

class DailyTemperaturesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [1, 1, 4, 2, 1, 1, 0, 0],
      daily_temperatures(
        [73, 74, 75, 71, 69, 72, 76, 73]
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 1, 1, 0],
      daily_temperatures(
        [30, 40, 50, 60]
      )
    )
  end

  def test_default_three
    assert_equal(
      [1, 1, 0],
      daily_temperatures(
        [30, 60, 90]
      )
    )
  end
end
