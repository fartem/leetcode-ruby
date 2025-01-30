# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1209_remove_all_adjacent_duplicates_in_string_ii'
require 'minitest/autorun'

class RemoveAllAdjacentDuplicatesInStringIITest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'abcd',
      remove_duplicates_adjacent(
        'abcd',
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      'aa',
      remove_duplicates_adjacent(
        'deeedbbcccbdaa',
        3
      )
    )
  end

  def test_default_three
    assert_equal(
      'ps',
      remove_duplicates_adjacent(
        'pbbcggttciiippooaais',
        2
      )
    )
  end
end
