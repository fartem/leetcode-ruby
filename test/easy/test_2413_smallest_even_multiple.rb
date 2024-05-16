# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2413_smallest_even_multiple'
require 'minitest/autorun'

class SmallestEvenMultipleTest < ::Minitest::Test
  def test_default
    assert_equal(10, smallest_even_multiple(5))
    assert_equal(6, smallest_even_multiple(6))
  end
end
