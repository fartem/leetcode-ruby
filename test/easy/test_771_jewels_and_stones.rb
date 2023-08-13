# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/771_jewels_and_stones'
require 'minitest/autorun'

class JewelsAndStonesTest < ::Minitest::Test
  def test_default
    assert_equal(3, num_jewels_in_stones('aA', 'aAAbbbb'))
    assert_equal(0, num_jewels_in_stones('z', 'ZZ'))
  end
end
