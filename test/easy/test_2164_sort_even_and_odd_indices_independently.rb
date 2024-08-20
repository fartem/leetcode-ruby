# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2164_sort_even_and_odd_indices_independently'
require 'minitest/autorun'

class SortEvenAndOddIndicesIndependentlyTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [2, 3, 4, 1],
      sort_even_odd(
        [4, 1, 2, 3]
      )
    )
  end

  def test_default_two
    assert_equal(
      [2, 1],
      sort_even_odd(
        [2, 1]
      )
    )
  end
end
