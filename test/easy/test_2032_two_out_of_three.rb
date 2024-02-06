# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2032_two_out_of_three'
require 'minitest/autorun'

class TwoOutOfThreeTest < ::Minitest::Test
  def test_default
    assert_equal([2, 3], two_out_of_three([1, 1, 3, 2], [2, 3], [3]))
    assert_equal([1, 2, 3], two_out_of_three([3, 1], [2, 3], [1, 2]))
    assert_equal([], two_out_of_three([1, 2, 2], [4, 3, 3], [5]))
  end
end
