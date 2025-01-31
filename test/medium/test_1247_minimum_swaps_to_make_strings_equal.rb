# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1247_minimum_swaps_to_make_strings_equal'
require 'minitest/autorun'

class MinimumSwapsToMakeStringsEqualTest < ::Minitest::Test
  def test_default_one = assert_equal(1, minimum_swap('xx', 'yy'))

  def test_default_two = assert_equal(2, minimum_swap('xy', 'yx'))

  def test_default_three = assert_equal(-1, minimum_swap('xx', 'xy'))
end
