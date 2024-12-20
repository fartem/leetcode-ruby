# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/677_map_sum_pairs'
require 'minitest/autorun'

class MapSumPairsTest < ::Minitest::Test
  def test_default_one
    map_sum = ::MapSum.new
    map_sum.insert('apple', 3)

    assert_equal(3, map_sum.sum('ap'))

    map_sum.insert('app', 2)

    assert_equal(5, map_sum.sum('ap'))
  end
end
