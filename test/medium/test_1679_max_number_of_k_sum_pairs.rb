# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1679_max_number_of_k_sum_pairs'
require 'minitest/autorun'

class MaxNumberOfKSumPairsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      max_operations(
        [1, 2, 3, 4],
        5
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      max_operations(
        [3, 1, 3, 4, 3],
        6
      )
    )
  end
end
