# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/2130_maximum_twin_sum_of_a_linked_list'
require 'minitest/autorun'

class MaximumTwinSumOfALinkedListTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      6,
      pair_sum(
        ::ListNode.from_array(
          [5, 4, 2, 1]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      7,
      pair_sum(
        ::ListNode.from_array(
          [4, 2, 2, 3]
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      100_001,
      pair_sum(
        ::ListNode.from_array(
          [1, 100_000]
        )
      )
    )
  end
end
