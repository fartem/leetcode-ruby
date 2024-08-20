# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1550_three_consecutive_odds'
require 'minitest/autorun'

class ThreeConsecutiveOddsTest < ::Minitest::Test
  def test_default_one
    assert(
      !three_consecutive_odds(
        [2, 6, 4, 1]
      )
    )
  end

  def test_default_two
    assert(
      three_consecutive_odds(
        [1, 2, 34, 3, 4, 5, 7, 23, 12]
      )
    )
  end
end
