# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/424_longest_repeating_character_replacement'
require 'minitest/autorun'

class LongestRepeatingCharacterReplacementTest < ::Minitest::Test
  def test_default_one = assert_equal(4, character_replacement('ABAB', 2))

  def test_default_two = assert_equal(4, character_replacement('AABABBA', 1))
end
