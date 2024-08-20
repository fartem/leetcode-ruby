# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2367_number_of_arithmetic_triplets'
require 'minitest/autorun'

class NumberOfArithmeticTripletsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      arithmetic_triplets(
        [0, 1, 4, 6, 7, 10],
        3
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      arithmetic_triplets(
        [4, 5, 6, 7, 8, 9],
        2
      )
    )
  end
end
