# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2460_apply_operations_to_an_array'
require 'minitest/autorun'

class ApplyOperationsToAnArrayTest < ::Minitest::Test
  def test_default
    assert_equal([1, 4, 2, 0, 0, 0], apply_operations([1, 2, 2, 1, 1, 0]))
    assert_equal([1, 0], apply_operations([0, 1]))
  end
end
