# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2206_divide_array_into_equal_pairs'
require 'minitest/autorun'

class DivideArrayIntoEqualPairsTest < ::Minitest::Test
  def test_default
    assert(divide_array([3, 2, 3, 2, 2, 2]))
    assert(!divide_array([1, 2, 3, 4]))
  end
end
