# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/easy/234_palindrome_linked_list'
require 'minitest/autorun'

class PalindromeLinkedListTest < ::Minitest::Test
  def test_default_one = assert(is_palindrome_ll(::ListNode.from_array([1, 2, 2, 1])))

  def test_default_two = assert(!is_palindrome_ll(::ListNode.from_array([1, 2])))
end
