# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/382_linked_list_random_node'
require 'minitest/autorun'

class LinkedListRandomNodeTest < ::Minitest::Test
  def test_default_one
    solution = ::Solution.new(
      ::ListNode.from_array(
        [1, 2, 3]
      )
    )

    assert([1, 2, 3].include?(solution.get_random))
    assert([1, 2, 3].include?(solution.get_random))
    assert([1, 2, 3].include?(solution.get_random))
    assert([1, 2, 3].include?(solution.get_random))
    assert([1, 2, 3].include?(solution.get_random))
  end
end
