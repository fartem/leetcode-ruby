# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/941_valid_mountain_array'
require 'minitest/autorun'

class ValidMountainArrayTest < ::Minitest::Test
  def test_default_one = assert(!valid_mountain_array([2, 1]))

  def test_default_two = assert(!valid_mountain_array([3, 5, 5]))

  def test_default_three = assert(valid_mountain_array([0, 3, 2, 1]))
end
