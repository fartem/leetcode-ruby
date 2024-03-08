# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2154_keep_multiplying_found_values_by_two'
require 'minitest/autorun'

class KeepMultiplyingFoundValuesByTwoTest < ::Minitest::Test
  def test_default
    assert_equal(24, find_final_value([5, 3, 6, 1, 12], 3))
    assert_equal(4, find_final_value([2, 7, 9], 4))
  end
end
