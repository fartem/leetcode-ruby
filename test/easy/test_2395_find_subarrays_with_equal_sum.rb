# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2395_find_subarrays_with_equal_sum'
require 'minitest/autorun'

class FindSubarraysWithEqualSumTest < ::Minitest::Test
  def test_default
    assert(find_subarrays([4, 2, 4]))
    assert(!find_subarrays([1, 2, 3, 4, 5]))
    assert(find_subarrays([0, 0, 0]))
  end
end
