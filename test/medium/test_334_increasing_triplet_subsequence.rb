# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/334_increasing_triplet_subsequence'
require 'minitest/autorun'

class IncreasingTripletSubsequenceTest < ::Minitest::Test
  def test_default_one
    assert(
      increasing_triplet(
        [1, 2, 3, 4, 5]
      )
    )
  end

  def test_default_two
    assert(
      !increasing_triplet(
        [5, 4, 3, 2, 1]
      )
    )
  end

  def test_default_three
    assert(
      increasing_triplet(
        [2, 1, 5, 0, 4, 6]
      )
    )
  end
end
