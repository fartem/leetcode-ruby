# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1646_get_maximum_in_generated_array'
require 'minitest/autorun'

class GetMaximumInGeneratedArrayTest < ::Minitest::Test
  def test_default_one = assert_equal(3, get_maximum_generated(7))

  def test_default_two = assert_equal(1, get_maximum_generated(2))

  def test_default_three = assert_equal(2, get_maximum_generated(3))
end
