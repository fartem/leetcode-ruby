# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2027_minimum_moves_to_convert_string'
require 'minitest/autorun'

class MinimumMovesToConvertStringTest < ::Minitest::Test
  def test_default
    assert_equal(1, minimum_moves('XXX'))
    assert_equal(2, minimum_moves('XXOX'))
    assert_equal(0, minimum_moves('OOOO'))
  end
end
