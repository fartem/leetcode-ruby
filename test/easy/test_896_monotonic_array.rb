# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/896_monotonic_array'
require 'minitest/autorun'

class MonotonicArrayTest < ::Minitest::Test
  def test_default_one = assert(is_monotonic([1, 2, 2, 3]))

  def test_default_two = assert(is_monotonic([6, 5, 4, 4]))

  def test_default_three = assert(!is_monotonic([1, 3, 2]))
end
