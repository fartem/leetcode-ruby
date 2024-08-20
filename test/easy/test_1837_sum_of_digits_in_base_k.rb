# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1837_sum_of_digits_in_base_k'
require 'minitest/autorun'

class SumOfDigitsInBaseKTest < ::Minitest::Test
  def test_default_one = assert_equal(9, sum_base(34, 6))

  def test_default_two = assert_equal(1, sum_base(10, 10))
end
