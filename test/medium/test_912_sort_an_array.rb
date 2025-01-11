# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/912_sort_an_array'
require 'minitest/autorun'

class SortAnArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [1, 2, 3, 5],
      sort_array(
        [5, 2, 3, 1]
      )
    )
  end

  def test_default_two
    assert_equal(
      [0, 0, 1, 1, 2, 5],
      sort_array(
        [5, 1, 1, 2, 0, 0]
      )
    )
  end
end
