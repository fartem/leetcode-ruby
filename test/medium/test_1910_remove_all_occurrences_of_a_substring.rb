# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1910_remove_all_occurrences_of_a_substring'
require 'minitest/autorun'

class RemoveAllOccurrencesOfASubstringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'dab',
      remove_occurrences(
        'daabcbaabcbc',
        'abc'
      )
    )
  end

  def test_default_two
    assert_equal(
      'ab',
      remove_occurrences(
        'axxxxyyyyb',
        'xy'
      )
    )
  end
end
