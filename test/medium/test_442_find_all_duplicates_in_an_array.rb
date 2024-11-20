# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/442_find_all_duplicates_in_an_array'
require 'minitest/autorun'

class FindAllDuplicatesInAnArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [2, 3],
      find_duplicates(
        [4, 3, 2, 7, 8, 2, 3, 1]
      )
    )
  end

  def test_default_two
    assert_equal(
      [1],
      find_duplicates(
        [1, 1, 2]
      )
    )
  end

  def test_default_three
    assert_equal(
      [],
      find_duplicates(
        [1]
      )
    )
  end
end
