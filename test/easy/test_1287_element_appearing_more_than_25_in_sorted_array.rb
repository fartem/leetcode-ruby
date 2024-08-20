# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1287_element_appearing_more_than_25_in_sorted_array'
require 'minitest/autorun'

class ElementAppearingMoreThan25InSortedArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      6,
      find_special_integer(
        [1, 2, 2, 6, 6, 6, 6, 7, 10]
      )
    )
  end

  def test_default_two = assert_equal(1, find_special_integer([1, 1]))
end
