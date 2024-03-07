# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2148_count_elements_with_strictly_smaller_and_greater_elements'
require 'minitest/autorun'

class CountElementsWithStrictlySmallerAndGreaterElementsTest < ::Minitest::Test
  def test_default
    assert_equal(2, count_elements([11, 7, 2, 15]))
    assert_equal(2, count_elements([-3, 3, 3, 90]))
  end
end
