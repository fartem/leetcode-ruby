# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1662_check_if_two_string_arrays_are_equivalent'
require 'minitest/autorun'

class CheckIfTwoStringArraysAreEquivalentTest < ::Minitest::Test
  def test_default_one = assert(array_strings_are_equal(%w[ab c], %w[a bc]))

  def test_default_two = assert(!array_strings_are_equal(%w[a cb], %w[ab c]))

  def test_default_three = assert(array_strings_are_equal(%w[abc d defg], ['abcddefg']))
end
