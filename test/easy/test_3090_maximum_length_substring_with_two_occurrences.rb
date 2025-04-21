# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/3090_maximum_length_substring_with_two_occurrences'
require 'minitest/autorun'

class MaximumLengthSubstringWithTwoOccurrencesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      maximum_length_substring(
        'bcbbbcba'
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      maximum_length_substring(
        'aaaa'
      )
    )
  end
end
