# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2496_maximum_value_of_a_string_in_an_array'
require 'minitest/autorun'

class MaximumValueOfAStringInAnArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      5,
      maximum_value(
        %w[alic3 bob 3 4 00000]
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      maximum_value(
        %w[1 01 001 0001]
      )
    )
  end
end
