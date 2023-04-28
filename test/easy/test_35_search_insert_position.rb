require_relative '../../lib/easy/35_search_insert_position'
require 'minitest/autorun'

class SearchInsertPositionTest < Minitest::Test
  def test_default
    assert search_insert([1, 3, 5, 6], 5) == 2
    assert search_insert([1, 3, 5, 6], 2) == 1
    assert search_insert([1, 3, 5, 6], 7) == 4
  end
end

