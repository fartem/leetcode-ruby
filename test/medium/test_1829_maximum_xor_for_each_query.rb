# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1829_maximum_xor_for_each_query'
require 'minitest/autorun'

class MaximumXORForEachQueryTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [0, 3, 2, 3],
      get_maximum_xor(
        [0, 1, 1, 3],
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      [5, 2, 6, 5],
      get_maximum_xor(
        [2, 3, 4, 7],
        3
      )
    )
  end

  def test_default_three
    assert_equal(
      [4, 3, 6, 4, 6, 7],
      get_maximum_xor(
        [0, 1, 2, 2, 5, 7],
        3
      )
    )
  end
end
