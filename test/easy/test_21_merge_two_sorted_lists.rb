require_relative '../../lib/easy/21_merge_two_sorted_lists'
require 'minitest/autorun'

class ValidParenthesesTest < Minitest::Test
  def test_default
    merge_two_lists(
      ListNode.from_array([1, 2, 4]),
      ListNode.from_array([1, 3, 4]),
    ) == ListNode.from_array([1, 1, 2, 3, 4, 4])
    merge_two_lists(
      ListNode.from_array([]),
      ListNode.from_array([]),
    ) == nil
    merge_two_lists(
      ListNode.from_array([]),
      ListNode.from_array([0]),
    ) == ListNode.from_array([0])
  end
end
