# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2177_find_three_consecutive_integers_that_sum_to_a_given_number'
require 'minitest/autorun'

class FindThreeConsecutiveIntegersThatSumToAGivenNumberTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [10, 11, 12],
      sum_of_three(33)
    )
  end

  def test_default_two
    assert_equal(
      [],
      sum_of_three(4)
    )
  end
end
