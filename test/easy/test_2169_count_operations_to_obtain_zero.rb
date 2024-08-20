# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2169_count_operations_to_obtain_zero'
require 'minitest/autorun'

class CountOperationsToObtainZeroTest < ::Minitest::Test
  def test_default_one = assert_equal(3, count_operations(2, 3))

  def test_default_two = assert_equal(1, count_operations(10, 10))
end
