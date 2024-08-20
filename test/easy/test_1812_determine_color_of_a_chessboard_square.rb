# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1812_determine_color_of_a_chessboard_square'
require 'minitest/autorun'

class DetermineColorOfAChessboardSquareTest < ::Minitest::Test
  def test_default_one = assert(!square_is_white('a1'))

  def test_default_two = assert(square_is_white('h3'))

  def test_default_three = assert(!square_is_white('c7'))
end
