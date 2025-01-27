# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1081_smallest_subsequence_of_distinct_characters'
require 'minitest/autorun'

class SmallestSubsequenceOfDistinctCharactersTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'abc',
      smallest_subsequence('bcabc')
    )
  end

  def test_default_two
    assert_equal(
      'acdb',
      smallest_subsequence('cbacdcbc')
    )
  end
end
