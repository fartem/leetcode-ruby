# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2068_check_whether_two_strings_are_almost_equivalent'
require 'minitest/autorun'

class CheckWhetherTwoStringsAreAlmostEquivalentTest < ::Minitest::Test
  def test_default_one = assert(!check_almost_equivalent('aaaa', 'bccb'))

  def test_default_two = assert(check_almost_equivalent('abcdeef', 'abaaacc'))

  def test_default_three = assert(check_almost_equivalent('cccddabba', 'babababab'))
end
