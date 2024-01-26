# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1995_count_special_quadruplets'
require 'minitest/autorun'

class CountSpecialQuadrupletsTest < ::Minitest::Test
  def test_default
    assert_equal(1, count_quadruplets([1, 2, 3, 6]))
    assert_equal(0, count_quadruplets([3, 3, 6, 4, 5]))
    assert_equal(4, count_quadruplets([1, 1, 1, 3, 5]))
  end
end
