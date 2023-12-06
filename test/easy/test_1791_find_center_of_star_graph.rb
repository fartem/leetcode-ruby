# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1791_find_center_of_star_graph'
require 'minitest/autorun'

class FindCenterOfStarGraphTest < ::Minitest::Test
  def test_default
    assert_equal(2, find_center([[1, 2], [2, 3], [4, 2]]))
    assert_equal(1, find_center([[1, 2], [5, 1], [1, 3], [1, 4]]))
  end
end
