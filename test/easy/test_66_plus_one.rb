# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/66_plus_one'
require 'minitest/autorun'

class PlusOneTest < ::Minitest::Test
  def test_default_one = assert_equal([1, 2, 4], plus_one([1, 2, 3]))

  def test_default_two = assert_equal([4, 3, 2, 2], plus_one([4, 3, 2, 1]))

  def test_default_three = assert_equal([1, 0], plus_one([9]))
end
