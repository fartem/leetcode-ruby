# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/15_3sum'
require 'minitest/autorun'

class ThreeSumTest < ::Minitest::Test
  def test_default
    assert_equal([[-1, -1, 2], [-1, 0, 1]], three_sum([-1, 0, 1, 2, -1, -4]))
    assert_equal([], three_sum([0, 1, 1]))
    assert_equal([[0, 0, 0]], three_sum([0, 0, 0]))
  end
end
