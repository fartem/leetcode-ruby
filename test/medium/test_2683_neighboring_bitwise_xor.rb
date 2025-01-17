# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2683_neighboring_bitwise_xor'
require 'minitest/autorun'

class NeighboringBitwiseXORTest < ::Minitest::Test
  def test_default_one
    assert(
      does_valid_array_exist(
        [1, 1, 0]
      )
    )
  end

  def test_default_two
    assert(
      does_valid_array_exist(
        [1, 1]
      )
    )
  end

  def test_default_three
    assert(
      !does_valid_array_exist(
        [1, 0]
      )
    )
  end
end
