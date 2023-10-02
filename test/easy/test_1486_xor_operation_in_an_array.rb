# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1486_xor_operation_in_an_array'
require 'minitest/autorun'

class XOROperationInAnArrayTest < ::Minitest::Test
  def test_default
    assert_equal(8, xor_operation(5, 0))
    assert_equal(8, xor_operation(4, 3))
  end
end
