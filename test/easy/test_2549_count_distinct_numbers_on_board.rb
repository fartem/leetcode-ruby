# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2549_count_distinct_numbers_on_board'
require 'minitest/autorun'

class CountDistinctNumbersOnBoardTest < ::Minitest::Test
  def test_default_one = assert_equal(4, distinct_integers(5))

  def test_default_two = assert_equal(2, distinct_integers(3))
end
