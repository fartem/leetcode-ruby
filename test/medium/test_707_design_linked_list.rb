# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/707_design_linked_list'
require 'minitest/autorun'

class DesignLinkedListTest < ::Minitest::Test
  def test_default_one
    my_linked_list = ::MyLinkedList.new
    my_linked_list.add_at_head(1)
    my_linked_list.add_at_tail(3)
    my_linked_list.add_at_index(1, 2)

    assert_equal(2, my_linked_list.get(1))

    my_linked_list.delete_at_index(1)

    assert_equal(3, my_linked_list.get(1))
  end

  def test_additional_one
    my_linked_list = ::MyLinkedList.new
    my_linked_list.add_at_tail(1)
    my_linked_list.add_at_index(0, 1)
    my_linked_list.delete_at_index(0)

    assert_equal(1, my_linked_list.get(0))

    my_linked_list.add_at_index(2, 2)
  end
end
