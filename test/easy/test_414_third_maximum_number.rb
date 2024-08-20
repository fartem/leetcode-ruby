# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/414_third_maximum_number'
require 'minitest/autorun'

class ThirdMaximumNumberTest < ::Minitest::Test
  def test_default_one = assert_equal(1, third_max([3, 2, 1]))

  def test_default_two = assert_equal(2, third_max([1, 2]))

  def test_default_three = assert_equal(1, third_max([2, 2, 3, 1]))

  def test_additional_one = assert_equal(2, third_max([1, 2, 2, 2]))
end
