# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/830_positions_of_large_groups'
require 'minitest/autorun'

class PositionsOfLargeGroupsTest < ::Minitest::Test
  def test_default
    assert_equal([[3, 6]], large_group_positions('abbxxxxzzy'))
    assert_equal([], large_group_positions('abc'))
    assert_equal(
      [[3, 5], [6, 9], [12, 14]],
      large_group_positions('abcdddeeeeaabbbcd')
    )
  end
end
