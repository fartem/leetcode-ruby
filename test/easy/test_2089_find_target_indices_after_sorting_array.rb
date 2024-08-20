# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2089_find_target_indices_after_sorting_array'
require 'minitest/autorun'

class FindTargetIndicesAfterSortingArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [1, 2],
      target_indices(
        [1, 2, 5, 2, 3],
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      [3],
      target_indices(
        [1, 2, 5, 2, 3],
        3
      )
    )
  end

  def test_default_three
    assert_equal(
      [4],
      target_indices(
        [1, 2, 5, 2, 3],
        5
      )
    )
  end
end
