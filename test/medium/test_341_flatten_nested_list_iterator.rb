# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/341_flatten_nested_list_iterator'
require 'minitest/autorun'

class FlattenNestedListIteratorTest < ::Minitest::Test
  def test_default_one
    nested_iterator = ::NestedIterator.new(
      [
        ::NestedInteger.new(
          [
            ::NestedInteger.new(1),
            ::NestedInteger.new(1)
          ]
        ),
        ::NestedInteger.new(2),
        ::NestedInteger.new(
          [
            ::NestedInteger.new(1),
            ::NestedInteger.new(1)
          ]
        )
      ]
    )

    assert_equal(1, nested_iterator.next)
    assert_equal(1, nested_iterator.next)
    assert_equal(2, nested_iterator.next)
    assert_equal(1, nested_iterator.next)
    assert_equal(1, nested_iterator.next)

    assert(!nested_iterator.has_next)
  end

  def test_default_two
    nested_iterator = ::NestedIterator.new(
      [
        ::NestedInteger.new(1),
        ::NestedInteger.new(
          [
            ::NestedInteger.new(4),
            ::NestedInteger.new(
              [
                ::NestedInteger.new(6)
              ]
            )
          ]
        )
      ]
    )

    assert_equal(1, nested_iterator.next)
    assert_equal(4, nested_iterator.next)
    assert_equal(6, nested_iterator.next)

    assert(!nested_iterator.has_next)
  end
end
