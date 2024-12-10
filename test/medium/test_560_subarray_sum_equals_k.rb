# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/560_subarray_sum_equals_k'
require 'minitest/autorun'

class SubarraySumEqualsKTest < ::Minitest::Test
  def test_default_one = assert_equal(2, subarray_sum([1, 1, 1], 2))

  def test_default_two = assert_equal(2, subarray_sum([1, 2, 3], 3))
end
