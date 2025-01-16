# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2425_bitwise_xor_of_all_pairings'
require 'minitest/autorun'

class BitwiseXOROfAllPairingsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      13,
      xor_all_nums(
        [2, 1, 3],
        [10, 2, 5, 0]
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      xor_all_nums(
        [1, 2],
        [3, 4]
      )
    )
  end
end
