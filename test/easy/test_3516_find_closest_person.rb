# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/3516_find_closest_person'
require 'minitest/autorun'

class FindClosestPersonTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      find_closest(
        2, 7, 4
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      find_closest(
        2, 5, 6
      )
    )
  end

  def test_default_three
    assert_equal(
      0,
      find_closest(
        1, 5, 3
      )
    )
  end
end
