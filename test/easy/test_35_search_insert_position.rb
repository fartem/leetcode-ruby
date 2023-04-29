# frozen_string_literal: true

require_relative '../../lib/easy/35_search_insert_position'
require 'minitest/autorun'

class SearchInsertPositionTest < ::Minitest::Test
  def test_default
    assert_equal(2, search_insert([1, 3, 5, 6], 5))
    assert_equal(1, search_insert([1, 3, 5, 6], 2))
    assert_equal(4, search_insert([1, 3, 5, 6], 7))
  end
end
