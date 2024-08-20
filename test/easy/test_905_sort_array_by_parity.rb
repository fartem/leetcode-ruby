# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/905_sort_array_by_parity'
require 'minitest/autorun'

class SortArrayByParityTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [2, 4, 3, 1],
      sort_array_by_parity(
        [3, 1, 2, 4]
      )
    )
  end

  def test_default_two
    assert_equal(
      [0],
      sort_array_by_parity([0])
    )
  end
end
