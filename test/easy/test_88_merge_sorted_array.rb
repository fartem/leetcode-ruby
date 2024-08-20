# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/88_merge_sorted_array'
require 'minitest/autorun'

class MergeSortedArrayTest < ::Minitest::Test
  def test_default_one
    arr = [1, 2, 3, 0, 0, 0]
    merge(arr, 3, [2, 5, 6], 3)
    assert_equal([1, 2, 2, 3, 5, 6], arr)
  end

  def test_default_two
    arr = [1]
    merge(arr, 1, [], 0)
    assert_equal([1], arr)
  end

  def test_default_three
    arr = []
    merge(arr, 0, [1], 1)
    assert_equal([1], arr)
  end
end
