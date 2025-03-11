# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1996_the_number_of_weak_characters_in_the_game'
require 'minitest/autorun'

class TheNumberOfWeakCharactersInTheGameTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      0,
      number_of_weak_characters(
        [
          [5, 5],
          [6, 3],
          [3, 6]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      number_of_weak_characters(
        [
          [2, 2],
          [3, 3]
        ]
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      number_of_weak_characters(
        [
          [1, 5],
          [10, 4],
          [4, 3]
        ]
      )
    )
  end
end
