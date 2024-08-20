# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2341_maximum_number_of_pairs_in_array'
require 'minitest/autorun'

class MaximumNumberOfPairsInArrayTest < ::Minitest::Test
  def test_default_one = assert_equal([3, 1], number_of_pairs([1, 3, 2, 1, 3, 2, 2]))

  def test_default_two = assert_equal([1, 0], number_of_pairs([1, 1]))

  def test_default_three = assert_equal([0, 1], number_of_pairs([0]))
end
