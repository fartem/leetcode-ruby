# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2481_minimum_cuts_to_divide_a_circle'
require 'minitest/autorun'

class MinimumCutsToDivideACircleTest < ::Minitest::Test
  def test_default_one = assert_equal(2, number_of_cuts(4))

  def test_default_two = assert_equal(3, number_of_cuts(3))

  def test_additional_one = assert_equal(0, number_of_cuts(0))
end
