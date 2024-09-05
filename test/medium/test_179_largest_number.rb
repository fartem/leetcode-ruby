# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/179_largest_number'
require 'minitest/autorun'

class LargestNumberTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      '210',
      largest_number(
        [10, 2]
      )
    )
  end

  def test_default_two
    assert_equal(
      '9534330',
      largest_number(
        [3, 30, 34, 5, 9]
      )
    )
  end
end
