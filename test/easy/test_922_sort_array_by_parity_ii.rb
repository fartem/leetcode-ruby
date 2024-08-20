# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/922_sort_array_by_parity_ii'
require 'minitest/autorun'

class SortArrayByParityIITest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [2, 7, 4, 5],
      sort_array_by_parity_ii(
        [4, 2, 5, 7]
      )
    )
  end

  def test_default_two
    assert_equal(
      [2, 3],
      sort_array_by_parity_ii(
        [2, 3]
      )
    )
  end
end
