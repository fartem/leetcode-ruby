# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2974_minimum_number_game'
require 'minitest/autorun'

class MinimumNumberGameTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [3, 2, 5, 4],
      number_game(
        [5, 4, 2, 3]
      )
    )
  end

  def test_default_two
    assert_equal(
      [5, 2],
      number_game(
        [2, 5]
      )
    )
  end
end
