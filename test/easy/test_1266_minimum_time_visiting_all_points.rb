# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1266_minimum_time_visiting_all_points'
require 'minitest/autorun'

class MinimumTimeVisitingAllPointsTest < ::Minitest::Test
  def test_default
    assert_equal(7, min_time_to_visit_all_points([[1, 1], [3, 4], [-1, 0]]))
    assert_equal(5, min_time_to_visit_all_points([[3, 2], [-2, 2]]))
  end
end
