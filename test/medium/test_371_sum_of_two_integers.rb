# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/371_sum_of_two_integers'
require 'minitest/autorun'

class SumOfTwoIntegersTest < ::Minitest::Test
  def test_default_one = assert_equal(3, get_sum(1, 2))

  def test_default_two = assert_equal(5, get_sum(2, 3))
end
