# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/299_bulls_and_cows'
require 'minitest/autorun'

class BullsAndCowsTest < ::Minitest::Test
  def test_default_one = assert_equal('1A3B', get_hint('1807', '7810'))

  def test_default_two = assert_equal('1A1B', get_hint('1123', '0111'))
end
