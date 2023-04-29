require_relative '../../lib/easy/28_find_the_index_of_the_first_occurrence_in_a_string'
require 'minitest/autorun'

class FindTheIndexOfTheFirstOccurrenceInAStringTest < Minitest::Test
  def test_default
    assert str_str('sadbutsad', 'sad') == 0
    assert str_str('leetcode', 'leeto') == -1
  end
end
