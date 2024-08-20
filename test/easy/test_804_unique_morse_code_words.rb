# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/804_unique_morse_code_words'
require 'minitest/autorun'

class UniqueMorseCodeWordsTest < ::Minitest::Test
  def test_default_one = assert_equal(2, unique_morse_representations(%w[gin zen gig msg]))

  def test_default_two = assert_equal(1, unique_morse_representations(['a']))
end
