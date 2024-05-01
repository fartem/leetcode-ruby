# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2357_make_array_zero_by_subtracting_equal_amounts'
require 'minitest/autorun'

class MakeArrayZeroBySubtractingEqualAmountsTest < ::Minitest::Test
  def test_default
    assert_equal(3, minimum_operations([1, 5, 0, 3, 5]))
    assert_equal(0, minimum_operations([0]))
  end
end
