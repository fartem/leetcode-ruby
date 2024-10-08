# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2515_shortest_distance_to_target_string_in_a_circular_array'
require 'minitest/autorun'

class ShortestDistanceToTargetStringInACircularArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      closet_target(
        %w[hello i am leetcode hello],
        'hello',
        1
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      closet_target(
        %w[a b leetcode],
        'leetcode',
        0
      )
    )
  end

  def test_default_three
    assert_equal(
      -1,
      closet_target(
        %w[i eat leetcode],
        'ate',
        0
      )
    )
  end
end
