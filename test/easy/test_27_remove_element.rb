# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/27_remove_element'
require 'minitest/autorun'

class RemoveElementTest < ::Minitest::Test
  def test_default_one
    arr = [3, 2, 2, 3]
    assert_equal(2, remove_element(arr, 3))
    assert_equal([2, 2], arr.take(2))
  end

  def test_default_two
    arr = [0, 1, 2, 2, 3, 0, 4, 2]
    assert_equal(5, remove_element(arr, 2))
    assert_equal([0, 1, 3, 0, 4], arr.take(5))
  end
end
