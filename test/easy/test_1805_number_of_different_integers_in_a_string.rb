# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1805_number_of_different_integers_in_a_string'
require 'minitest/autorun'

class NumberOfDifferentIntegersInAStringTest < ::Minitest::Test
  def test_default
    assert_equal(3, num_different_integers('a123bc34d8ef34'))
    assert_equal(2, num_different_integers('leet1234code234'))
    assert_equal(1, num_different_integers('a1b01c001'))
  end
end
