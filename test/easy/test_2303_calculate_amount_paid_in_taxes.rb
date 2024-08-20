# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2303_calculate_amount_paid_in_taxes'
require 'minitest/autorun'

class CalculateAmountPaidInTaxesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2.65000,
      calculate_tax(
        [
          [3, 50],
          [7, 10],
          [12, 25]
        ],
        10
      )
    )
  end

  def test_default_two
    assert_equal(
      0.25000,
      calculate_tax(
        [
          [1, 0],
          [4, 25],
          [5, 50]
        ],
        2
      )
    )
  end

  def test_default_three
    assert_equal(
      0.00000,
      calculate_tax(
        [
          [2, 50]
        ],
        0
      )
    )
  end

  def test_additional_one
    assert_equal(
      0.33000,
      calculate_tax(
        [
          [1, 33]
        ],
        1
      )
    )
  end
end
