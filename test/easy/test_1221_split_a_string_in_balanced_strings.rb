# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1221_split_a_string_in_balanced_strings'
require 'minitest/autorun'

class SplitAStringInBalancedStringsTest < ::Minitest::Test
  def test_default_one = assert_equal(4, balanced_string_split('RLRRLLRLRL'))

  def test_default_two = assert_equal(2, balanced_string_split('RLRRRLLRLL'))

  def test_default_three = assert_equal(1, balanced_string_split('LLLLRRRR'))
end
