# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/283_move_zeroes'
require 'minitest/autorun'

class MoveZeroesTest < ::Minitest::Test
  def test_default_one
    input = [0, 1, 0, 3, 12]
    move_zeroes(input)
    assert_equal([1, 3, 12, 0, 0], input)
  end

  def test_default_two
    input = [0]
    move_zeroes(input)
    assert_equal([0], input)
  end
end
