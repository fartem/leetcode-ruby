# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/896_monotonic_array'
require 'minitest/autorun'

class MonotonicArrayTest < ::Minitest::Test
  def test_default
    assert(is_monotonic([1, 2, 2, 3]))
    assert(is_monotonic([6, 5, 4, 4]))
    assert(!is_monotonic([1, 3, 2]))
  end
end
