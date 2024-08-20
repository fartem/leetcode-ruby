# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2469_convert_the_temperature'
require 'minitest/autorun'

class ConvertTheTemperatureTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        309.65000,
        97.70000
      ],
      convert_temperature(
        36.50
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        395.26000,
        251.79800
      ],
      convert_temperature(
        122.11
      )
    )
  end
end
