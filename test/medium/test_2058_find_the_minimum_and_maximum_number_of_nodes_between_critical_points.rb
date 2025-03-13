# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/2058_find_the_minimum_and_maximum_number_of_nodes_between_critical_points'
require 'minitest/autorun'

class FindTheMinimumAndMaximumNumberOfNodesBetweenCriticalPointsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [-1, -1],
      nodes_between_critical_points(
        ::ListNode.from_array(
          [3, 1]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 3],
      nodes_between_critical_points(
        ::ListNode.from_array(
          [5, 3, 1, 2, 5, 1, 2]
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      [3, 3],
      nodes_between_critical_points(
        ::ListNode.from_array(
          [1, 3, 2, 2, 3, 2, 2, 2, 7]
        )
      )
    )
  end
end
