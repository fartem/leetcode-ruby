# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1358_number_of_substrings_containing_all_three_characters'
require 'minitest/autorun'

class NumberOfSubstringsContainingAllThreeCharactersTest < ::Minitest::Test
  def test_default_one = assert_equal(10, number_of_substrings('abcabc'))

  def test_default_two = assert_equal(3, number_of_substrings('aaacb'))

  def test_default_three = assert_equal(1, number_of_substrings('abc'))
end
