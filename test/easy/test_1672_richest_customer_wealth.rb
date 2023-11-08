# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1672_richest_customer_wealth'
require 'minitest/autorun'

class RichestCustomerWealthTest < ::Minitest::Test
  def test_default
    assert_equal(6, maximum_wealth([[1, 2, 3], [3, 2, 1]]))
    assert_equal(10, maximum_wealth([[1, 5], [7, 3], [3, 5]]))
    assert_equal(17, maximum_wealth([[2, 8, 7], [7, 1, 3], [1, 9, 5]]))
  end
end
