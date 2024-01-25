# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1991_find_the_middle_index_in_array'
require 'minitest/autorun'

class FindTheMiddleIndexInArrayTest < ::Minitest::Test
  def test_default
    assert_equal(3, find_middle_index([2, 3, -1, 8, 4]))
    assert_equal(2, find_middle_index([1, -1, 4]))
    assert_equal(-1, find_middle_index([2, 5]))
  end
end
