# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1876_substrings_of_size_three_with_distinct_characters'
require 'minitest/autorun'

class SubstringsOfSizeThreeWithDistinctCharactersTest < ::Minitest::Test
  def test_default
    assert_equal(1, count_good_substrings('xyzzaz'))
    assert_equal(4, count_good_substrings('aababcabc'))
  end
end
