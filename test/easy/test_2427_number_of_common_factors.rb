# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2427_number_of_common_factors'
require 'minitest/autorun'

class NumberOfCommonFactorsTest < ::Minitest::Test
  def test_default
    assert_equal(4, common_factors(12, 6))
    assert_equal(2, common_factors(25, 30))
  end
end
