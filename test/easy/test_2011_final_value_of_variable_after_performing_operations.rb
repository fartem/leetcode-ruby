# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2011_final_value_of_variable_after_performing_operations'
require 'minitest/autorun'

class FinalValueOfVariableAfterPerformingOperationsTest < ::Minitest::Test
  def test_default
    assert_equal(1, final_value_after_operations(%w[--X X++ X++]))
    assert_equal(3, final_value_after_operations(%w[++X ++X X++]))
    assert_equal(0, final_value_after_operations(%w[X++ ++X --X X--]))
  end
end
