# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/374_guess_number_higher_or_lower'
require 'minitest/autorun'

class GuessNumberHigherOrLowerTest < ::Minitest::Test
  def test_default_one
    $guess_num = 6
    assert_equal(6, guess_number(10))
  end

  def test_default_two
    $guess_num = 1
    assert_equal(1, guess_number(1))
  end

  def test_default_three
    $guess_num = 1
    assert_equal(1, guess_number(2))
  end
end
