# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/128_longest_consecutive_sequence'
require 'minitest/autorun'

class LongestConsequtiveSequenceTest < ::Minitest::Test
  def test_default
    assert_equal(4, longest_consecutive([100, 4, 200, 1, 3, 2]))
    assert_equal(9, longest_consecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]))
  end
end
