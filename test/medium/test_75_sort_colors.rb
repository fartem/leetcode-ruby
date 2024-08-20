# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/75_sort_colors'
require 'minitest/autorun'

class SortColorsTest < ::Minitest::Test
  def test_default_one
    nums = [2, 0, 2, 1, 1, 0]
    sort_colors(nums)
    assert_equal([0, 0, 1, 1, 2, 2], nums)
  end

  def test_default_two
    nums = [2, 0, 1]
    sort_colors(nums)
    assert_equal([0, 1, 2], nums)
  end
end
