# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2007_find_original_array_from_doubled_array'
require 'minitest/autorun'

class FindOriginalArrayFromDoubledArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [1, 3, 4],
      find_original_array(
        [1, 3, 4, 2, 6, 8]
      )
    )
  end

  def test_default_two
    assert_equal(
      [],
      find_original_array(
        [6, 3, 0, 1]
      )
    )
  end

  def test_default_three
    assert_equal(
      [],
      find_original_array(
        []
      )
    )
  end
end
