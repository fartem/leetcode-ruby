# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2506_count_pairs_of_similar_strings'
require 'minitest/autorun'

class CountPairsOfSimilarStringsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      similar_pairs(
        %w[aba aabb abcd bac aabc]
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      similar_pairs(
        %w[aabb ab ba]
      )
    )
  end

  def test_default_three
    assert_equal(
      0,
      similar_pairs(
        %w[nba cba dba]
      )
    )
  end
end
