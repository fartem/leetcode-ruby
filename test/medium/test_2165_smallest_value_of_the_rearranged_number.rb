# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2165_smallest_value_of_the_rearranged_number'
require 'minitest/autorun'

class SmallestValueOfTheRearrangedNumberTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      103,
      smallest_number(310)
    )
  end

  def test_default_two
    assert_equal(
      -7650,
      smallest_number(-7605)
    )
  end
end
