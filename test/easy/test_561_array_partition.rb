# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/561_array_partition'
require 'minitest/autorun'

class ArrayPartitionTest < ::Minitest::Test
  def test_default
    assert_equal(
      4,
      array_pair_sum(
        [1, 4, 3, 2]
      )
    )
    assert_equal(
      9,
      array_pair_sum(
        [6, 2, 6, 5, 1, 2]
      )
    )
  end
end
