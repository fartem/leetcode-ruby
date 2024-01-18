# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1967_number_of_strings_that_appear_as_substrings_in_word'
require 'minitest/autorun'

class NumberOfStringsThatAppearAsSubstringsInWordTest < ::Minitest::Test
  def test_default
    assert_equal(3, num_of_strings(%w[a abc bc d], 'abc'))
    assert_equal(2, num_of_strings(%w[a b c], 'aaaaabbbbb'))
    assert_equal(3, num_of_strings(%w[a a a], 'ab'))
  end
end
