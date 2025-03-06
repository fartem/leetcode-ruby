# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1823_find_the_winner_of_the_circular_game'
require 'minitest/autorun'

class FindTheWinnerOfTheCircularGameTest < ::Minitest::Test
  def test_default_one = assert_equal(3, find_the_winner(5, 2))

  def test_default_two = assert_equal(1, find_the_winner(6, 5))
end
