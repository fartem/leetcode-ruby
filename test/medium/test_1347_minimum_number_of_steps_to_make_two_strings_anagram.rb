# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1347_minimum_number_of_steps_to_make_two_strings_anagram'
require 'minitest/autorun'

class MinimumNumberOfStepsToMakeTwoStringsAnagramTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      min_steps(
        'bab',
        'aba'
      )
    )
  end

  def test_default_two
    assert_equal(
      5,
      min_steps(
        'leetcode',
        'practice'
      )
    )
  end

  def test_default_three
    assert_equal(
      0,
      min_steps(
        'anagram',
        'mangaar'
      )
    )
  end
end
