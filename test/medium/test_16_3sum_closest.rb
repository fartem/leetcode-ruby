# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/16_3sum_closest'
require 'minitest/autorun'

class ThreeSumClosestTest < ::Minitest::Test
  def test_default
    assert_equal(2, three_sum_closest([-1, 2, 1, -4], 1))
    assert_equal(0, three_sum_closest([0, 0, 0], 1))
  end
end
