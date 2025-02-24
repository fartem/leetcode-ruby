# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1525_number_of_good_ways_to_split_a_string'
require 'minitest/autorun'

class NumberOfGoodWaysToSplitAStringTest < ::Minitest::Test
  def test_default_one = assert_equal(2, num_splits('aacaba'))

  def test_default_two = assert_equal(1, num_splits('abcd'))
end
