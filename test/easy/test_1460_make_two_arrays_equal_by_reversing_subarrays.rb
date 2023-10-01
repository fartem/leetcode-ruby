# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1460_make_two_arrays_equal_by_reversing_subarrays'
require 'minitest/autorun'

class MakeTwoArraysEqualByReversingSubarraysTest < ::Minitest::Test
  def test_default
    assert(can_be_equal([1, 2, 3, 4], [2, 4, 1, 3]))
    assert(can_be_equal([7], [7]))
    assert(!can_be_equal([3, 7, 9], [3, 7, 11]))
  end
end
