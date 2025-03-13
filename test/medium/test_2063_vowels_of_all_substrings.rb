# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2063_vowels_of_all_substrings'
require 'minitest/autorun'

class VowelsOfAllSubstringsTest < ::Minitest::Test
  def test_default_one = assert_equal(6, count_vowels('aba'))

  def test_default_two = assert_equal(3, count_vowels('abc'))

  def test_default_three = assert_equal(0, count_vowels('ltcd'))
end
