# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/35_search_insert_position'
require 'minitest/autorun'

class SearchInsertPositionTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      search_insert(
        [1, 3, 5, 6],
        5
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      search_insert(
        [1, 3, 5, 6],
        2
      )
    )
  end

  def test_default_three
    assert_equal(
      4,
      search_insert(
        [1, 3, 5, 6],
        7
      )
    )
  end
end
