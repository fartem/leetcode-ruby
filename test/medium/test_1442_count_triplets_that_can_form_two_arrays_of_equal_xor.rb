# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1442_count_triplets_that_can_form_two_arrays_of_equal_xor'
require 'minitest/autorun'

class CountTripletsThatCanFormTwoArraysOfEqualXORTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      count_triplets(
        [2, 3, 1, 6, 7]
      )
    )
  end

  def test_default_two
    assert_equal(
      10,
      count_triplets(
        [1, 1, 1, 1, 1]
      )
    )
  end
end
