# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2042_check_if_numbers_are_ascending_in_a_sentence'
require 'minitest/autorun'

class CheckIfNumbersAreAscendingInASentenceTest < ::Minitest::Test
  def test_default
    assert(are_numbers_ascending('1 box has 3 blue 4 red 6 green and 12 yellow marbles'))
    assert(!are_numbers_ascending('hello world 5 x 5'))
    assert(!are_numbers_ascending('sunset is at 7 51 pm overnight lows will be in the low 50 and 60 s'))
  end
end
