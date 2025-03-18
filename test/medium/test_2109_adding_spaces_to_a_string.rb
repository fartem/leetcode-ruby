# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2109_adding_spaces_to_a_string'
require 'minitest/autorun'

class AddingSpacesToAStringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'Leetcode Helps Me Learn',
      add_spaces(
        'LeetcodeHelpsMeLearn',
        [8, 13, 15]
      )
    )
  end

  def test_default_two
    assert_equal(
      'i code in py thon',
      add_spaces(
        'icodeinpython',
        [1, 5, 7, 9]
      )
    )
  end

  def test_default_three
    assert_equal(
      ' s p a c i n g',
      add_spaces(
        'spacing',
        [0, 1, 2, 3, 4, 5, 6]
      )
    )
  end
end
