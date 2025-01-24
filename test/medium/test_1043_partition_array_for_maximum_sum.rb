# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1043_partition_array_for_maximum_sum'
require 'minitest/autorun'

class PartitionArrayForMaximumSumTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      84,
      max_sum_after_partitioning(
        [1, 15, 7, 9, 2, 5, 10],
        3
      )
    )
  end

  def test_default_two
    assert_equal(
      83,
      max_sum_after_partitioning(
        [1, 4, 1, 5, 7, 3, 6, 1, 9, 9, 3],
        4
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      max_sum_after_partitioning(
        [1],
        1
      )
    )
  end
end
