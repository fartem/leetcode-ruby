# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1893_check_if_all_the_integers_in_a_range_are_covered'
require 'minitest/autorun'

class CheckIfAllTheIntegersInARangeAreCoveredTest < ::Minitest::Test
  def test_default
    assert(is_covered([[1, 2], [3, 4], [5, 6]], 2, 5))
    assert(!is_covered([[1, 10], [10, 20]], 21, 21))
  end
end
