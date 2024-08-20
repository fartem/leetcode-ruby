# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1512_number_of_good_pairs'
require 'minitest/autorun'

class NumberOfGoodPairsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      num_identical_pairs(
        [1, 2, 3, 1, 1, 3]
      )
    )
  end

  def test_default_two
    assert_equal(
      6,
      num_identical_pairs(
        [1, 1, 1, 1]
      )
    )
  end

  def test_default_three
    assert_equal(
      0,
      num_identical_pairs(
        [1, 2, 3]
      )
    )
  end
end
