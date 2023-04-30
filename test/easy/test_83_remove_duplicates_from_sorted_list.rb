# frozen_string_literal: true

require_relative '../../lib/easy/83_remove_duplicates_from_sorted_list'
require_relative '../../lib/common/linked_list'
require 'minitest/autorun'

class RemoveDuplicatesFromSortedListTest < ::Minitest::Test
  def test_default
    assert_equal(
      ::ListNode.from_array([1, 2]),
      delete_duplicates(::ListNode.from_array([1, 1, 2]))
    )
    assert_equal(
      ::ListNode.from_array([1, 2, 3]),
      delete_duplicates(::ListNode.from_array([1, 1, 2, 3, 3]))
    )
  end
end
