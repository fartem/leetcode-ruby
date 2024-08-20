# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/list_node_with_random'
require_relative '../../lib/medium/138_copy_list_with_random_pointer'
require 'minitest/autorun'

class CopyListWithRandomPointerTest < ::Minitest::Test
  def test_default_one
    first = ::ListNodeWithRandom.new(7)
    second = ::ListNodeWithRandom.new(13)
    third = ::ListNodeWithRandom.new(11)
    fourth = ::ListNodeWithRandom.new(10)
    fifth = ::ListNodeWithRandom.new(1)

    first.next = second
    second.next = third
    third.next = fourth
    fourth.next = fifth

    second.random = first
    third.random = fifth
    fourth.random = third
    fifth.random = first

    assert(
      ::ListNodeWithRandom.are_equal(
        first,
        copy_random_list(
          first
        )
      )
    )
  end

  def test_default_two
    first = ::ListNodeWithRandom.new(1)
    second = ::ListNodeWithRandom.new(2)

    first.next = second

    first.random = second
    second.random = second

    assert(
      ::ListNodeWithRandom.are_equal(
        first,
        copy_random_list(
          first
        )
      )
    )
  end

  def test_default_three
    first = ::ListNodeWithRandom.new(3)
    second = ::ListNodeWithRandom.new(3)
    third = ::ListNodeWithRandom.new(3)

    first.next = second
    second.next = third

    third.random = first

    assert(
      ::ListNodeWithRandom.are_equal(
        first,
        copy_random_list(
          first
        )
      )
    )
  end
end
