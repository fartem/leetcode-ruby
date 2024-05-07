# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2379_minimum_recolors_to_get_k_consecutive_black_blocks'
require 'minitest/autorun'

class MinimumRecolorsToGetKConsecutiveBlackBlocksTest < ::Minitest::Test
  def test_default
    assert_equal(3, minimum_recolors('WBBWWBBWBW', 7))
    assert_equal(0, minimum_recolors('WBWBBBW', 2))
  end
end
