# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1812_determine_color_of_a_chessboard_square'
require 'minitest/autorun'

class DetermineColorOfAChessboardSquareTest < ::Minitest::Test
  def test_default
    assert(!square_is_white('a1'))
    assert(square_is_white('h3'))
    assert(!square_is_white('c7'))
  end
end
