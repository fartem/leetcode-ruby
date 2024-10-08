# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1046_last_stone_weight'
require 'minitest/autorun'

class LastStoneWeightTest < ::Minitest::Test
  def test_default_one = assert_equal(1, last_stone_weight([2, 7, 4, 1, 8, 1]))

  def test_default_two = assert_equal(1, last_stone_weight([1]))
end
