# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/821_shortest_distance_to_a_character'
require 'minitest/autorun'

class ShortestDistanceToACharacterTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0],
      shortest_to_char('loveleetcode', 'e')
    )
  end

  def test_default_two
    assert_equal(
      [3, 2, 1, 0],
      shortest_to_char('aaab', 'b')
    )
  end
end
