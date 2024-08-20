# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1716_calculate_money_in_leetcode_bank'
require 'minitest/autorun'

class CalculateMoneyInLeetcodeBankTest < ::Minitest::Test
  def test_default_one = assert_equal(10, total_money(4))

  def test_default_two = assert_equal(37, total_money(10))

  def test_default_three = assert_equal(96, total_money(20))
end
