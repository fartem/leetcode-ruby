# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1342_number_of_steps_to_reduce_a_number_to_zero'
require 'minitest/autorun'

class NumberOfStepsToReduceANumberToZeroTest < ::Minitest::Test
  def test_default
    assert_equal(6, number_of_steps(14))
    assert_equal(4, number_of_steps(8))
    assert_equal(12, number_of_steps(123))
  end
end
