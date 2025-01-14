# frozen_string_literal: false

require_relative '../test_helper'
require_relative '../../lib/hard/1220_count_vowels_permutation'
require 'minitest/autorun'

class CountVowelsPermutationTest < ::Minitest::Test
  def test_default_one = assert(5, count_vowel_permutation(1))

  def test_default_two = assert(10, count_vowel_permutation(2))

  def test_default_three = assert(68, count_vowel_permutation(5))
end
