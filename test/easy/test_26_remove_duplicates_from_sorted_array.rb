require_relative '../../lib/easy/26_remove_duplicates_from_sorted_array'
require 'minitest/autorun'

class RemoveDuplicatesFromSortedArrayTest < Minitest::Test
  def test_default
    arr = [1, 1, 2]
    assert remove_duplicates(arr) == 2
    assert arr.take(2) == [1, 2]

    arr = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
    assert remove_duplicates(arr) == 5
    arr.take(5) == [0, 1, 2, 3, 4]
  end
end
