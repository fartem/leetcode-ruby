# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2161_partition_array_according_to_given_pivot'
require 'minitest/autorun'

class PartitionArrayAccordingToGivenPivotTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [9, 5, 3, 10, 10, 12, 14],
      pivot_array(
        [9, 12, 5, 10, 14, 3, 10],
        10
      )
    )
  end

  def test_default_two
    assert_equal(
      [-3, 2, 4, 3],
      pivot_array(
        [-3, 4, 3, 2],
        2
      )
    )
  end
end
