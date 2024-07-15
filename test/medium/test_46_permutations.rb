# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/46_permutations'
require 'minitest/autorun'

class PermutationsTest < ::Minitest::Test
  def test_default
    assert_equal(
      [
        [1, 2, 3],
        [1, 3, 2],
        [2, 1, 3],
        [2, 3, 1],
        [3, 1, 2],
        [3, 2, 1]
      ],
      permute([1, 2, 3])
    )
    assert_equal([[0, 1], [1, 0]], permute([0, 1]))
    assert_equal([[1]], permute([1]))
  end
end
