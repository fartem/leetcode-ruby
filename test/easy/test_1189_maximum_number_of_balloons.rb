# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1189_maximum_number_of_balloons'
require 'minitest/autorun'

class MaximumNumberOfBalloonsTest < ::Minitest::Test
  def test_default_one = assert_equal(1, max_number_of_balloons('nlaebolko'))

  def test_default_two = assert_equal(2, max_number_of_balloons('loonbalxballpoon'))

  def test_default_three = assert_equal(0, max_number_of_balloons('leetcode'))
end
