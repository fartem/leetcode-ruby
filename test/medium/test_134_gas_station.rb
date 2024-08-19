# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/134_gas_station'
require 'minitest/autorun'

class GasStationTest < ::Minitest::Test
  def test_default
    assert_equal(
      3,
      can_complete_circuit(
        [1, 2, 3, 4, 5],
        [3, 4, 5, 1, 2]
      )
    )
    assert_equal(
      -1,
      can_complete_circuit(
        [2, 3, 4],
        [3, 4, 3]
      )
    )
  end
end
