# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2293_min_max_game'
require 'minitest/autorun'

class MinMaxGameTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      min_max_game(
        [1, 3, 5, 2, 4, 8, 2, 2]
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      min_max_game(
        [3]
      )
    )
  end
end
