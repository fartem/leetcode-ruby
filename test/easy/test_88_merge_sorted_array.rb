# frozen_string_literal: true

require_relative '../../lib/easy/88_merge_sorted_array'
require 'minitest/autorun'

class MergeSortedArrayTest < ::Minitest::Test
  def test_default
    arr = [1, 2, 3, 0, 0, 0]
    merge(arr, 3, [2, 5, 6], 3)
    assert_equal([1, 2, 2, 3, 5, 6], arr)

    arr = [1]
    merge(arr, 1, [], 0)
    assert_equal([1], arr)

    arr = []
    merge(arr, 0, [1], 1)
    assert_equal([1], arr)
  end
end
