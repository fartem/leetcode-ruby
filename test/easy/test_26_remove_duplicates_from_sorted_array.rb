require_relative '../../lib/easy/26_remove_duplicates_from_sorted_array'
require 'minitest/autorun'

class RemoveDuplicatesFromSortedArrayTest < Minitest::Test
  def test_default
    assert remove_duplicates([1, 1, 2]) == 2
    assert remove_duplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]) == 5
  end
end
