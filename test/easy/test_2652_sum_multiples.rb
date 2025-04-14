# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2652_sum_multiples'
require 'minitest/autorun'

class SumMultiplesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      21,
      sum_of_multiples(7)
    )
  end

  def test_default_two
    assert_equal(
      40,
      sum_of_multiples(10)
    )
  end

  def test_default_three
    assert_equal(
      30,
      sum_of_multiples(9)
    )
  end
end
