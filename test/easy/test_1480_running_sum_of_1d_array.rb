# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1480_running_sum_of_1d_array'
require 'minitest/autorun'

class RunningSumOf1dArrayTest < ::Minitest::Test
  def test_default
    assert_equal([1, 3, 6, 10], running_sum([1, 2, 3, 4]))
    assert_equal([1, 2, 3, 4, 5], running_sum([1, 1, 1, 1, 1]))
    assert_equal([3, 4, 6, 16, 17], running_sum([3, 1, 2, 10, 1]))
  end
end
