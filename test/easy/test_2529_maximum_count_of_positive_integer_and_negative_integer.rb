# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2529_maximum_count_of_positive_integer_and_negative_integer'
require 'minitest/autorun'

class MaximumCountOfPositiveIntegerAndNegativeIntegerTest < ::Minitest::Test
  def test_default
    assert_equal(3, maximum_count([-2, -1, -1, 1, 2, 3]))
    assert_equal(3, maximum_count([-3, -2, -1, 0, 0, 1, 2]))
    assert_equal(4, maximum_count([5, 20, 66, 1314]))
  end
end
