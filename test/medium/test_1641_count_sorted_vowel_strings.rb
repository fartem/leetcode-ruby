# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1641_count_sorted_vowel_strings'
require 'minitest/autorun'

class CountSortedVowelStringsTest < ::Minitest::Test
  def test_default_one = assert_equal(5, count_vowel_strings(1))

  def test_default_two = assert_equal(15, count_vowel_strings(2))

  def test_default_three = assert_equal(66_045, count_vowel_strings(33))
end
