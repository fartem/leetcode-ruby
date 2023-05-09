# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/26_remove_duplicates_from_sorted_array'
require 'minitest/autorun'

class RemoveDuplicatesFromSortedArrayTest < ::Minitest::Test
  def test_default
    arr = [1, 1, 2]
    assert_equal(2, remove_duplicates(arr))
    assert_equal([1, 2], arr.take(2))

    arr = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
    assert_equal(5, remove_duplicates(arr))
    assert_equal([0, 1, 2, 3, 4], arr.take(5))
  end
end
