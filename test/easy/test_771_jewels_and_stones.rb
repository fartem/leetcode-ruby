# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/771_jewels_and_stones'
require 'minitest/autorun'

class JewelsAndStonesTest < ::Minitest::Test
  def test_default_one = assert_equal(3, num_jewels_in_stones('aA', 'aAAbbbb'))

  def test_default_two = assert_equal(0, num_jewels_in_stones('z', 'ZZ'))
end
