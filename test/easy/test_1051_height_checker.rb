# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1051_height_checker'
require 'minitest/autorun'

class HeightCheckerTest < ::Minitest::Test
  def test_default_one = assert_equal(3, height_checker([1, 1, 4, 2, 1, 3]))

  def test_default_two = assert_equal(5, height_checker([5, 1, 2, 3, 4]))

  def test_default_three = assert_equal(0, height_checker([1, 2, 3, 4, 5]))
end
