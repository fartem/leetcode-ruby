# frozen_string_literal: true

require_relative '../../lib/easy/1_two_sum'
require 'minitest/autorun'

class TwoSumTest < ::Minitest::Test
  def test_default
    assert_equal([0, 1], two_sum([2, 7, 11, 15], 9))
    assert_equal([1, 2], two_sum([3, 2, 4], 6))
    assert_equal([0, 1], two_sum([3, 3], 6))
  end
end
