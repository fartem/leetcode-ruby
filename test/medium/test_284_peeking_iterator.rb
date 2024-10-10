# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/284_peeking_iterator'
require 'minitest/autorun'

class PeekingIteratorTest < ::Minitest::Test
  def test_default_one
    peeking_iterator = ::PeekingIterator.new(
      ::Iterator.new([1, 2, 3])
    )

    assert_equal(1, peeking_iterator.next)
    assert_equal(2, peeking_iterator.peek)
    assert_equal(2, peeking_iterator.next)
    assert_equal(3, peeking_iterator.next)

    assert(!peeking_iterator.has_next)
  end
end
