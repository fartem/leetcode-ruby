# frozen_string_literal: true

require_relative '../../lib/easy/27_remove_element'
require 'minitest/autorun'

class RemoveElementTest < ::Minitest::Test
  def test_default
    arr = [3, 2, 2, 3]
    assert_equal(2, remove_element(arr, 3))
    assert_equal([2, 2], arr.take(2))

    arr = [0, 1, 2, 2, 3, 0, 4, 2]
    assert_equal(5, remove_element(arr, 2))
    assert_equal([0, 1, 3, 0, 4], arr.take(5))
  end
end
